

CREATE SCHEMA  shl_v1;
USE shl_v1;


CREATE TABLE cliente (
  id_cliente              INT PRIMARY KEY AUTO_INCREMENT,
  nombre                  VARCHAR(80) NOT NULL,
  apellido_razon_social   VARCHAR(120) NOT NULL,
  tipo_doc                VARCHAR(10),
  nro_doc                 VARCHAR(30),
  correo                  VARCHAR(120),
  tel                     VARCHAR(40),
  obs                     TEXT,
  fecha_alta              DATE,
  estado                  VARCHAR(20) DEFAULT 'activo'
) ;


CREATE TABLE domicilio (
  id_domicilio  INT PRIMARY KEY AUTO_INCREMENT,
  id_cliente    INT NOT NULL,
  calle         VARCHAR(120) NOT NULL,
  nro           VARCHAR(10),
  piso_dpto     VARCHAR(10),
  localidad        VARCHAR(80),
  prov     VARCHAR(80),
  cp            VARCHAR(12),
  notas         TEXT,
  CONSTRAINT fk_domicilio_cliente
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
    ON DELETE CASCADE ON UPDATE CASCADE
) ;


CREATE TABLE equipo (
  id_equipo          INT PRIMARY KEY AUTO_INCREMENT,
  id_domicilio       INT NOT NULL,
  tipo               VARCHAR(40) NOT NULL,  
  marca              VARCHAR(60),
  modelo             VARCHAR(60),
  sn                 VARCHAR(60) UNIQUE,    
  btu_frigorias      INT,
  fecha_instalacion  DATE,
  estado             VARCHAR(20) DEFAULT 'operativo',
  CONSTRAINT fk_equipo_domicilio
    FOREIGN KEY (id_domicilio) REFERENCES domicilio(id_domicilio)
    ON DELETE RESTRICT ON UPDATE CASCADE
) ;


CREATE TABLE tipo_servicio (
  id_tipo_servicio INT PRIMARY KEY AUTO_INCREMENT,
  nombre           VARCHAR(60) NOT NULL UNIQUE, 
  sla              INT,
  descripcion      TEXT
) ;


CREATE TABLE tecnico (
  id_tecnico      INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(60) NOT NULL,
  apellido VARCHAR(60) NOT NULL,
  dni             VARCHAR(20),
  tel             VARCHAR(40),
  correo          VARCHAR(120),
  activo          BOOLEAN DEFAULT TRUE
) ;


CREATE TABLE orden_servicio (
  id_orden          INT PRIMARY KEY AUTO_INCREMENT,
  id_cliente        INT NOT NULL,
  id_domicilio      INT NOT NULL,
  id_equipo         INT NULL,
  id_tipo_servicio  INT NOT NULL,
  id_tecnico        INT NULL,   
  fecha_creacion    DATETIME DEFAULT CURRENT_TIMESTAMP,
  fecha_entrega_aprox DATETIME NULL,
  prioridad         VARCHAR(10) DEFAULT 'media',
  estado            VARCHAR(20) DEFAULT 'abierta',
  obs				 TEXT,
  CONSTRAINT fk_os_cliente
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
    ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT fk_os_domicilio
    FOREIGN KEY (id_domicilio) REFERENCES domicilio(id_domicilio)
    ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT fk_os_equipo
    FOREIGN KEY (id_equipo) REFERENCES equipo(id_equipo)
    ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT fk_os_tiposerv
    FOREIGN KEY (id_tipo_servicio) REFERENCES tipo_servicio(id_tipo_servicio)
    ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT fk_os_tecnico
    FOREIGN KEY (id_tecnico) REFERENCES tecnico(id_tecnico)
    ON DELETE SET NULL ON UPDATE CASCADE
) 