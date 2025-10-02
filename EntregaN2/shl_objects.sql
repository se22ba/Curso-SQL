USE shl_v1;

-- VISTAS

CREATE VIEW vw_ordenes_detalle AS
SELECT
  os.id_orden,
  os.fecha_creacion,
  os.fecha_entrega_aprox,
  os.prioridad,
  os.estado,
  c.id_cliente,
  CONCAT(c.nombre,' ',c.apellido_razon_social) AS cliente,
  d.id_domicilio,
  CONCAT(d.calle,' ',IFNULL(d.nro,''),' ',IFNULL(d.piso_dpto,''),', ',IFNULL(d.localidad,'')) AS domicilio,
  ts.nombre AS tipo_servicio,
  ts.sla      AS sla_horas,
  t.id_tecnico AS id_tecnico,            
  CONCAT(t.nombre,' ',t.apellido) AS tecnico,
  e.id_equipo,
  e.tipo   AS equipo_tipo,
  e.marca  AS equipo_marca,
  e.modelo AS equipo_modelo
FROM orden_servicio os
JOIN cliente       c  ON c.id_cliente       = os.id_cliente
JOIN domicilio     d  ON d.id_domicilio     = os.id_domicilio
JOIN tipo_servicio ts ON ts.id_tipo_servicio = os.id_tipo_servicio
LEFT JOIN tecnico  t  ON t.id_tecnico       = os.id_tecnico
LEFT JOIN equipo   e  ON e.id_equipo        = os.id_equipo;

CREATE VIEW vw_carga_tecnico AS
SELECT
  t.id_tecnico,
  CONCAT(t.nombre,' ',t.apellido) AS tecnico,
  SUM(os.estado IN ('abierta','en_progreso')) AS ordenes_abiertas,
  SUM(os.prioridad='alta') AS altas,
  SUM(os.prioridad='media') AS medias,
  SUM(os.prioridad='baja') AS bajas
FROM tecnico t
LEFT JOIN orden_servicio os ON os.id_tecnico = t.id_tecnico
GROUP BY t.id_tecnico, tecnico;

CREATE VIEW vw_historial_equipo AS
SELECT
  e.id_equipo, e.tipo, e.marca, e.modelo, e.sn,
  MAX(os.fecha_creacion) AS ultima_intervencion,
  SUM(os.id_orden IS NOT NULL) AS total_intervenciones
FROM equipo e
LEFT JOIN orden_servicio os ON os.id_equipo = e.id_equipo
GROUP BY e.id_equipo, e.tipo, e.marca, e.modelo, e.sn;

-- FUNCIONES

DELIMITER //
CREATE FUNCTION fn_total_ordenes_cliente(p_id_cliente INT)
RETURNS INT
READS SQL DATA
DETERMINISTIC
BEGIN
  DECLARE v_total INT;
  SELECT COUNT(*) INTO v_total FROM orden_servicio WHERE id_cliente = p_id_cliente;
  RETURN IFNULL(v_total,0);
END;
//


CREATE FUNCTION fn_horas_restantes_orden(p_id_orden INT)
RETURNS INT
READS SQL DATA
DETERMINISTIC
BEGIN
  DECLARE v_restantes INT;
  SELECT TIMESTAMPDIFF(HOUR, NOW(), fecha_entrega_aprox) INTO v_restantes
  FROM orden_servicio WHERE id_orden = p_id_orden;
  RETURN v_restantes;
END;
//

-- STORED PROCEDURES


CREATE PROCEDURE sp_ordenes_abiertas_por_tecnico(IN p_id_tecnico INT)
READS SQL DATA
BEGIN
  SELECT *
  FROM vw_ordenes_detalle
  WHERE (id_tecnico = p_id_tecnico OR p_id_tecnico IS NULL)
    AND estado IN ('abierta','en_progreso')
  ORDER BY prioridad DESC, fecha_creacion ASC;
END;
//


CREATE PROCEDURE sp_historial_por_cliente(IN p_id_cliente INT)
READS SQL DATA
BEGIN
  SELECT
    os.id_orden, os.fecha_creacion, os.estado, os.prioridad,
    ts.nombre AS tipo_servicio, ts.sla AS sla_horas,
    CONCAT(d.calle,' ',IFNULL(d.nro,''),' ',IFNULL(d.piso_dpto,''),', ',IFNULL(d.localidad,'')) AS domicilio,
    CONCAT(t.nombre,' ',t.apellido) AS tecnico,
    e.tipo AS equipo_tipo, e.marca, e.modelo, e.sn
  FROM orden_servicio os
  JOIN tipo_servicio ts ON ts.id_tipo_servicio = os.id_tipo_servicio
  JOIN domicilio d      ON d.id_domicilio      = os.id_domicilio
  LEFT JOIN tecnico t   ON t.id_tecnico        = os.id_tecnico
  LEFT JOIN equipo e    ON e.id_equipo         = os.id_equipo
  WHERE os.id_cliente = p_id_cliente
  ORDER BY os.fecha_creacion DESC;
END;
//


CREATE PROCEDURE sp_estadistica_servicios()
READS SQL DATA
BEGIN
  SELECT 'ranking_tecnicos' AS seccion, t.id_tecnico,
         CONCAT(t.nombre,' ',t.apellido) AS tecnico,
         COUNT(os.id_orden) AS total
  FROM tecnico t
  LEFT JOIN orden_servicio os ON os.id_tecnico = t.id_tecnico
  GROUP BY t.id_tecnico, tecnico
  ORDER BY total DESC;

  SELECT 'mix_tipo_servicio' AS seccion, ts.nombre, COUNT(os.id_orden) AS total
  FROM tipo_servicio ts
  LEFT JOIN orden_servicio os ON os.id_tipo_servicio = ts.id_tipo_servicio
  GROUP BY ts.id_tipo_servicio, ts.nombre
  ORDER BY total DESC;
END;
//

-- TRIGGERS

CREATE TRIGGER trg_os_set_fecha_entrega_bi
BEFORE INSERT ON orden_servicio
FOR EACH ROW
BEGIN
  DECLARE v_sla INT;
  IF NEW.fecha_entrega_aprox IS NULL THEN
    SELECT sla INTO v_sla FROM tipo_servicio WHERE id_tipo_servicio = NEW.id_tipo_servicio;
    IF v_sla IS NOT NULL THEN
      SET NEW.fecha_entrega_aprox = DATE_ADD(NEW.fecha_creacion, INTERVAL v_sla HOUR);
    END IF;
  END IF;

  IF NEW.id_equipo IS NOT NULL THEN
    IF (SELECT id_domicilio FROM equipo WHERE id_equipo = NEW.id_equipo) <> NEW.id_domicilio THEN
      SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El equipo no pertenece al domicilio indicado';
    END IF;
  END IF;
END;
//


CREATE TRIGGER trg_os_set_fecha_entrega_bu
BEFORE UPDATE ON orden_servicio
FOR EACH ROW
BEGIN
  DECLARE v_sla INT;
  IF (NEW.id_tipo_servicio <> OLD.id_tipo_servicio) OR (NEW.fecha_entrega_aprox IS NULL) THEN
    SELECT sla INTO v_sla FROM tipo_servicio WHERE id_tipo_servicio = NEW.id_tipo_servicio;
    IF v_sla IS NOT NULL THEN
      SET NEW.fecha_entrega_aprox = DATE_ADD(NEW.fecha_creacion, INTERVAL v_sla HOUR);
    END IF;
  END IF;

  IF NEW.id_equipo IS NOT NULL THEN
    IF (SELECT id_domicilio FROM equipo WHERE id_equipo = NEW.id_equipo) <> NEW.id_domicilio THEN
      SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El equipo no pertenece al domicilio indicado';
    END IF;
  END IF;
END;
//


CREATE TRIGGER trg_os_close_mark_equipo_au
AFTER UPDATE ON orden_servicio
FOR EACH ROW
BEGIN
  IF NEW.estado = 'cerrada' AND OLD.estado <> 'cerrada' AND NEW.id_equipo IS NOT NULL THEN
    UPDATE equipo SET estado = 'operativo' WHERE id_equipo = NEW.id_equipo;
  END IF;
END;
//

DELIMITER ;