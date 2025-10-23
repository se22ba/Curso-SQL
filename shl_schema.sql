-- ===============================================
-- SHL - Creación completa + carga inicial (desde 0, sin parches)
-- Generado: 2025-10-23
-- Requiere MySQL 8+ (ventanas, ROW_NUMBER)
-- ===============================================

-- 0) Crear base de datos y seleccionar schema
CREATE DATABASE IF NOT EXISTS shl_v2
  DEFAULT CHARACTER SET utf8mb4
  DEFAULT COLLATE utf8mb4_unicode_ci;
USE shl_v2;

-- 1) Crear tablas (DDL)
-- Nota: los tipos se ajustaron para soportar los datos del seed.

CREATE TABLE tecnico (
  id_tecnico INT PRIMARY KEY,
  nombre VARCHAR(80) NOT NULL,
  apellido VARCHAR(80) NOT NULL,
  dni VARCHAR(20),
  tel VARCHAR(40),
  correo VARCHAR(120),
  activo TINYINT(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE cliente (
  id_cliente INT PRIMARY KEY,
  nombre VARCHAR(80) NOT NULL,
  apellido_razon_social VARCHAR(120) NOT NULL,
  tipo_doc VARCHAR(20),
  nro_doc VARCHAR(30),
  correo VARCHAR(120),
  tel VARCHAR(40),
  obs VARCHAR(255),
  fecha_alta DATE,
  estado VARCHAR(20)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE domicilio (
  id_domicilio INT PRIMARY KEY,
  id_cliente INT NOT NULL,
  calle VARCHAR(120) NOT NULL,
  nro VARCHAR(20),
  piso_dpto VARCHAR(20),
  localidad VARCHAR(120),
  prov VARCHAR(120),
  cp VARCHAR(20),
  notas VARCHAR(255),
  CONSTRAINT fk_dom_cliente FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
    ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE equipo (
  id_equipo INT PRIMARY KEY,
  id_domicilio INT NOT NULL,
  tipo VARCHAR(60) NOT NULL,
  marca VARCHAR(60),
  modelo VARCHAR(60),
  sn VARCHAR(60),
  btu_frigorias INT,
  fecha_instalacion DATE,
  estado VARCHAR(20),
  CONSTRAINT fk_equipo_domicilio FOREIGN KEY (id_domicilio) REFERENCES domicilio(id_domicilio)
    ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE tipo_servicio (
  id_tipo_servicio INT PRIMARY KEY,
  nombre VARCHAR(80) NOT NULL,
  sla INT NOT NULL,
  descripcion VARCHAR(255)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE material (
  id_material INT PRIMARY KEY,
  nombre VARCHAR(120) NOT NULL,
  descripcion VARCHAR(255),
  unidad_medida VARCHAR(30),
  precio_lista DECIMAL(18,2) NOT NULL DEFAULT 0,
  stock_minimo DECIMAL(18,2) NOT NULL DEFAULT 0,
  activo TINYINT(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE proveedor (
  id_proveedor INT PRIMARY KEY,
  razon_social VARCHAR(160) NOT NULL,
  cuit VARCHAR(30),
  correo VARCHAR(120),
  tel VARCHAR(40),
  direccion VARCHAR(255),
  activo TINYINT(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE compra (
  id_compra INT PRIMARY KEY,
  id_proveedor INT NOT NULL,
  fecha_compra DATETIME NOT NULL,
  nro_comprobante VARCHAR(60),
  estado VARCHAR(20),
  total DECIMAL(18,2),
  observacion VARCHAR(255),
  CONSTRAINT fk_compra_proveedor FOREIGN KEY (id_proveedor) REFERENCES proveedor(id_proveedor)
    ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE compra_detalle (
  id_compra_detalle INT PRIMARY KEY,
  id_compra INT NOT NULL,
  id_material INT NOT NULL,
  cantidad DECIMAL(18,2) NOT NULL,
  precio_unitario DECIMAL(18,2) NOT NULL,
  CONSTRAINT fk_compra_detalle_compra FOREIGN KEY (id_compra) REFERENCES compra(id_compra)
    ON UPDATE CASCADE ON DELETE RESTRICT,
  CONSTRAINT fk_compra_detalle_material FOREIGN KEY (id_material) REFERENCES material(id_material)
    ON UPDATE CASCADE ON DELETE RESTRICT,
  CONSTRAINT uq_compra_material UNIQUE (id_compra, id_material)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE orden_servicio (
  id_orden INT PRIMARY KEY,
  id_cliente INT NOT NULL,
  id_domicilio INT NOT NULL,
  id_equipo INT NOT NULL,
  id_tipo_servicio INT NOT NULL,
  id_tecnico INT NOT NULL,
  fecha_creacion DATETIME NOT NULL,
  fecha_entrega_aprox DATETIME,
  prioridad VARCHAR(20),
  estado VARCHAR(20),
  obs VARCHAR(255),
  CONSTRAINT fk_os_cliente FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
    ON UPDATE CASCADE ON DELETE RESTRICT,
  CONSTRAINT fk_os_domicilio FOREIGN KEY (id_domicilio) REFERENCES domicilio(id_domicilio)
    ON UPDATE CASCADE ON DELETE RESTRICT,
  CONSTRAINT fk_os_equipo FOREIGN KEY (id_equipo) REFERENCES equipo(id_equipo)
    ON UPDATE CASCADE ON DELETE RESTRICT,
  CONSTRAINT fk_os_tipo FOREIGN KEY (id_tipo_servicio) REFERENCES tipo_servicio(id_tipo_servicio)
    ON UPDATE CASCADE ON DELETE RESTRICT,
  CONSTRAINT fk_os_tecnico FOREIGN KEY (id_tecnico) REFERENCES tecnico(id_tecnico)
    ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE detalle_orden (
  id_detalle INT PRIMARY KEY,
  id_orden INT NOT NULL,
  descripcion VARCHAR(255) NOT NULL,
  horas DECIMAL(10,2),
  precio_hora DECIMAL(18,2),
  id_material INT NULL,
  cantidad DECIMAL(18,2),
  precio_unitario DECIMAL(18,2),
  subtotal DECIMAL(18,2),
  observaciones VARCHAR(255),
  CONSTRAINT fk_do_os FOREIGN KEY (id_orden) REFERENCES orden_servicio(id_orden)
    ON UPDATE CASCADE ON DELETE RESTRICT,
  CONSTRAINT fk_do_material FOREIGN KEY (id_material) REFERENCES material(id_material)
    ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE agenda_visita (
  id_visita INT PRIMARY KEY,
  id_orden INT NOT NULL,
  fecha_visita DATETIME NOT NULL,
  franja_horaria VARCHAR(20),
  id_tecnico INT NOT NULL,
  estado VARCHAR(20),
  observaciones VARCHAR(255),
  CONSTRAINT fk_agenda_os FOREIGN KEY (id_orden) REFERENCES orden_servicio(id_orden)
    ON UPDATE CASCADE ON DELETE RESTRICT,
  CONSTRAINT fk_agenda_tecnico FOREIGN KEY (id_tecnico) REFERENCES tecnico(id_tecnico)
    ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE bitacora_estado (
  id_bitacora INT PRIMARY KEY,
  id_orden INT NOT NULL,
  fecha_evento DATETIME NOT NULL,
  estado VARCHAR(20) NOT NULL,
  motivo VARCHAR(120),
  id_tecnico INT,
  observacion VARCHAR(255),
  CONSTRAINT fk_bitacora_os FOREIGN KEY (id_orden) REFERENCES orden_servicio(id_orden)
    ON UPDATE CASCADE ON DELETE RESTRICT,
  CONSTRAINT fk_bitacora_tecnico FOREIGN KEY (id_tecnico) REFERENCES tecnico(id_tecnico)
    ON UPDATE CASCADE ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE stock_movimiento (
  id_movimiento INT PRIMARY KEY,
  id_material INT NOT NULL,
  fecha_mov DATETIME NOT NULL,
  tipo_mov ENUM('ingreso','egreso') NOT NULL,
  cantidad DECIMAL(18,2) NOT NULL,
  comentario VARCHAR(255),
  id_orden INT NULL,
  id_compra INT NULL,
  CONSTRAINT fk_stock_material FOREIGN KEY (id_material) REFERENCES material(id_material)
    ON UPDATE CASCADE ON DELETE RESTRICT,
  CONSTRAINT fk_stock_os FOREIGN KEY (id_orden) REFERENCES orden_servicio(id_orden)
    ON UPDATE CASCADE ON DELETE SET NULL,
  CONSTRAINT fk_stock_compra FOREIGN KEY (id_compra) REFERENCES compra(id_compra)
    ON UPDATE CASCADE ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE fact_servicio (
  id_fact INT PRIMARY KEY,
  id_orden INT NOT NULL,
  id_cliente INT NOT NULL,
  id_tecnico INT NOT NULL,
  id_tipo_servicio INT NOT NULL,
  id_equipo INT NOT NULL,
  fecha_creacion DATETIME NOT NULL,
  fecha_compromiso DATETIME,
  fecha_cierre DATETIME,
  horas_sla DECIMAL(10,2),
  horas_reales DECIMAL(10,2),
  incumplio_sla TINYINT(1) NOT NULL DEFAULT 0,
  prioridad_snap VARCHAR(20),
  estado_final VARCHAR(20),
  costo_materiales DECIMAL(18,2),
  costo_mano_obra DECIMAL(18,2),
  calificacion INT NULL,
  comentarios VARCHAR(255),
  CONSTRAINT fk_fact_os FOREIGN KEY (id_orden) REFERENCES orden_servicio(id_orden)
    ON UPDATE CASCADE ON DELETE RESTRICT,
  CONSTRAINT fk_fact_cliente FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
    ON UPDATE CASCADE ON DELETE RESTRICT,
  CONSTRAINT fk_fact_tecnico FOREIGN KEY (id_tecnico) REFERENCES tecnico(id_tecnico)
    ON UPDATE CASCADE ON DELETE RESTRICT,
  CONSTRAINT fk_fact_tipo FOREIGN KEY (id_tipo_servicio) REFERENCES tipo_servicio(id_tipo_servicio)
    ON UPDATE CASCADE ON DELETE RESTRICT,
  CONSTRAINT fk_fact_equipo FOREIGN KEY (id_equipo) REFERENCES equipo(id_equipo)
    ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;