USE shl_v1;

-- CLIENTE

INSERT INTO cliente (nombre, apellido_razon_social, tipo_doc, nro_doc, correo, tel, obs, fecha_alta, estado) VALUES
('Ana','García','DNI','30111222','ana.garcia@mail.com','11-4000-0001',NULL, CURDATE(),'activo'),
('Bruno','Pérez','DNI','28999111','bruno.perez@mail.com','11-4000-0002',NULL, CURDATE(),'activo'),
('Carla','López','DNI','27123456','carla.lopez@mail.com','11-4000-0003',NULL, CURDATE(),'activo'),
('Diego','Martínez','DNI','25999888','diego.martinez@mail.com','11-4000-0004','Cliente comercial', CURDATE(),'activo'),
('Elena','Suárez','DNI','24888777','elena.suarez@mail.com','11-4000-0005',NULL, CURDATE(),'activo'),
('Fernando','Ramos','DNI','23877666','fernando.ramos@mail.com','11-4000-0006',NULL, CURDATE(),'activo'),
('Gabriela','Fernández','DNI','22766555','gabriela.fernandez@mail.com','11-4000-0007',NULL, CURDATE(),'activo'),
('Héctor','Romero','DNI','21655444','hector.romero@mail.com','11-4000-0008',NULL, CURDATE(),'activo'),
('Inés','Domínguez','DNI','20544333','ines.dominguez@mail.com','11-4000-0009',NULL, CURDATE(),'activo'),
('Julián','Vega','DNI','19433222','julian.vega@mail.com','11-4000-0010',NULL, CURDATE(),'activo');

-- DOMICILIO

INSERT INTO domicilio (id_cliente, calle, nro, piso_dpto, localidad, prov, cp, notas) VALUES
(1,'Av. Siempreviva','742',NULL,'CABA','Buenos Aires','1000',NULL),
(1,'San Martín','1200','2A','CABA','Buenos Aires','1001','Depto alquiler'),
(2,'Belgrano','555',NULL,'San Martín','Buenos Aires','1650',NULL),
(3,'Mitre','321',NULL,'Tigre','Buenos Aires','1648',NULL),
(4,'Rivadavia','1000','PB','CABA','Buenos Aires','1406',NULL),
(5,'Italia','777','1B','San Isidro','Buenos Aires','1642',NULL),
(6,'Urquiza','456',NULL,'Morón','Buenos Aires','1708',NULL),
(7,'Sarmiento','999','3C','Pilar','Buenos Aires','1629',NULL),
(8,'Lavalle','234',NULL,'Quilmes','Buenos Aires','1878',NULL),
(9,'Dorrego','88','4D','Lanús','Buenos Aires','1824',NULL),
(10,'French','12',NULL,'La Plata','Buenos Aires','1900',NULL),
(3,'Rawson','450',NULL,'Tigre','Buenos Aires','1648','Casa de fin de semana');

-- TIPO_SERVICIO

INSERT INTO tipo_servicio (nombre, sla, descripcion) VALUES
('Instalación',48,'Colocación inicial del equipo'),
('Reparación',24,'Diagnóstico y reparación'),
('Mantenimiento',72,'Service preventivo'),
('Retiro',24,'Retiro y traslado'),
('Reinstalación',48,'Instalación de equipo existente');

-- TECNICO

INSERT INTO tecnico (nombre, apellido, dni, tel, correo, activo) VALUES
('Marcos','Sosa','32111222','11-4100-0001','marcos.sosa@shl.com',TRUE),
('Nadia','Paz','31222333','11-4100-0002','nadia.paz@shl.com',TRUE),
('Osvaldo','Quiroga','30333444','11-4100-0003','osvaldo.quiroga@shl.com',TRUE),
('Paula','Ibarra','29444555','11-4100-0004','paula.ibarra@shl.com',TRUE),
('Quimey','Luna','28555666','11-4100-0005','quimey.luna@shl.com',TRUE),
('Rocío','Morales','27666777','11-4100-0006','rocio.morales@shl.com',TRUE),
('Santiago','Müller','26777888','11-4100-0007','santiago.muller@shl.com',TRUE),
('Tamara','Rossi','25888999','11-4100-0008','tamara.rossi@shl.com',TRUE),
('Ulises','Benítez','24999000','11-4100-0009','ulises.benitez@shl.com',TRUE),
('Valeria','Costa','23111122','11-4100-0010','valeria.costa@shl.com',TRUE);

-- EQUIPO

INSERT INTO equipo (id_domicilio, tipo, marca, modelo, sn, btu_frigorias, fecha_instalacion, estado) VALUES
(1,'Aire acondicionado','LG','S12','SN-A1001',3000,'2022-11-10','operativo'),
(2,'Heladera','Whirlpool','W500','SN-H2001',0,'2021-05-20','operativo'),
(3,'Aire acondicionado','Samsung','AR18','SN-A1002',4500,'2023-01-15','operativo'),
(4,'Freezer','Patrick','F300','SN-F3001',0,'2020-08-08','operativo'),
(5,'Aire acondicionado','BGH','B12','SN-A1003',3000,'2022-12-01','operativo'),
(6,'Heladera','Gafa','G360','SN-H2002',0,'2019-02-14','operativo'),
(7,'Aire acondicionado','Daikin','DX18','SN-A1004',5000,'2024-01-05','operativo'),
(8,'Aire acondicionado','Philco','P18','SN-A1005',4500,'2021-12-30','operativo'),
(9,'Heladera','Samsung','RT38','SN-H2003',0,'2020-03-03','operativo'),
(10,'Aire acondicionado','Carrier','C12','SN-A1006',3000,'2023-10-01','operativo'),
(11,'Heladera','Patrick','H300','SN-H2004',0,'2022-07-07','operativo'),
(12,'Aire acondicionado','LG','S18','SN-A1007',4500,'2023-02-02','operativo');

-- ORDEN_SERVICIO

INSERT INTO orden_servicio (id_cliente, id_domicilio, id_equipo, id_tipo_servicio, id_tecnico, fecha_creacion, fecha_entrega_aprox, prioridad, estado, obs) VALUES
(1,1,1,2,1,NOW(),NULL,'alta','abierta','No enfría'),
(1,2,2,3,2,NOW(),NULL,'media','abierta','Service anual'),
(2,3,3,2,3,NOW(),NULL,'alta','abierta','Fuga gas'),
(3,4,4,3,4,NOW(),NULL,'baja','abierta','Preventivo'),
(4,5,5,1,5,NOW(),NULL,'media','abierta','Nueva instalación'),
(5,6,6,2,6,NOW(),NULL,'alta','abierta','No arranca'),
(6,7,7,3,7,NOW(),NULL,'media','abierta','Limpieza'),
(7,8,8,2,8,NOW(),NULL,'alta','abierta','Error E1'),
(8,9,9,2,9,NOW(),NULL,'alta','abierta','No enfría'),
(9,10,10,5,10,NOW(),NULL,'media','abierta','Mudanza'),
(10,11,11,2,1,NOW(),NULL,'alta','abierta','No corta'),
(3,12,12,3,2,NOW(),NULL,'media','abierta','Service'),
(2,3,NULL,4,3,NOW(),NULL,'baja','abierta','Retiro de equipo viejo'),
(4,5,NULL,1,4,NOW(),NULL,'media','abierta','Instalación equipo nuevo'),
(5,6,NULL,2,5,NOW(),NULL,'alta','abierta','Diagnóstico general');
