USE shl_v2;

SET FOREIGN_KEY_CHECKS=0;
SET FOREIGN_KEY_CHECKS=0;



INSERT INTO tecnico (id_tecnico, nombre, apellido, dni, tel, correo, activo) VALUES
  (1,'Lucas','Gómez','30111222','+54 11 5555-1001','lucas.gomez@shlservice.com',TRUE),
  (2,'Carlos','Pereyra','30222333','+54 11 5555-1002','carlos.pereyra@shlservice.com',TRUE),
  (3,'Diego','Ramos','29333444','+54 11 5555-1003','diego.ramos@shlservice.com',TRUE),
  (4,'Jorge','Suárez','28444555','+54 11 5555-1004','jorge.suarez@shlservice.com',TRUE);


INSERT INTO cliente (id_cliente, nombre, apellido_razon_social, tipo_doc, nro_doc, correo, tel, obs, fecha_alta, estado) VALUES
  (1,'María','Fernández','DNI','26153556','maría.fernández@mail.com','+54 11 42867825','','2024-01-24','activo'),
  (2,'Jorge','López','DNI','26772573','jorge.lópez@mail.com','+54 11 41109031','','2024-02-23','activo'),
  (3,'Ana','Martínez','DNI','26587688','ana.martínez@mail.com','+54 11 48707870','','2024-05-04','activo'),
  (4,'Sergio','Gutiérrez','DNI','27718057','sergio.gutiérrez@mail.com','+54 11 45479144','','2024-06-22','activo'),
  (5,'Lucía','Paz','DNI','25585652','lucía.paz@mail.com','+54 11 48698256','','2024-02-09','activo'),
  (6,'Esteban','Roldán','DNI','27320397','esteban.roldán@mail.com','+54 11 48852574','','2024-05-09','activo'),
  (7,'Gabriela','Torres','DNI','26104733','gabriela.torres@mail.com','+54 11 41054447','','2024-06-24','activo'),
  (8,'Pablo','Alonso','DNI','26522451','pablo.alonso@mail.com','+54 11 49197443','','2024-01-04','activo'),
  (9,'Silvina','Maidana','DNI','26111728','silvina.maidana@mail.com','+54 11 48973915','','2024-05-06','activo'),
  (10,'Damián','Quiroga','DNI','25268544','damián.quiroga@mail.com','+54 11 43030113','','2024-02-08','activo'),
  (11,'Ricardo','Suárez','DNI','27805896','ricardo.suárez@mail.com','+54 11 49626108','','2024-02-09','activo'),
  (12,'Paula','Benítez','DNI','26724287','paula.benítez@mail.com','+54 11 48231838','','2024-03-14','activo'),
  (13,'Ignacio','García','DNI','26769499','ignacio.garcía@mail.com','+54 11 49997381','','2024-04-05','activo'),
  (14,'Noelia','Figueroa','DNI','27921716','noelia.figueroa@mail.com','+54 11 48633773','','2024-03-14','activo'),
  (15,'Camila','Vega','DNI','27227704','camila.vega@mail.com','+54 11 48999183','','2024-05-28','activo'),
  (16,'Fabián','Basualdo','DNI','25304267','fabián.basualdo@mail.com','+54 11 46033115','','2024-04-11','activo'),
  (17,'Yamila','Rossi','DNI','25651995','yamila.rossi@mail.com','+54 11 42795765','','2024-06-18','activo'),
  (18,'Sofía','Avila','DNI','26399037','sofía.avila@mail.com','+54 11 45641923','','2024-01-01','activo'),
  (19,'Roberto','Acosta','DNI','25621150','roberto.acosta@mail.com','+54 11 47194416','','2024-05-18','activo'),
  (20,'Belén','Soria','DNI','25648243','belén.soria@mail.com','+54 11 47817881','','2024-05-24','activo'),
  (21,'Héctor','Giménez','DNI','25162422','héctor.giménez@mail.com','+54 11 42813543','','2024-04-28','activo'),
  (22,'Mauro','Delgado','DNI','27690569','mauro.delgado@mail.com','+54 11 42164686','','2024-03-12','activo');


INSERT INTO domicilio (id_domicilio, id_cliente, calle, nro, piso_dpto, localidad, prov, cp, notas) VALUES
  (1,1,'Laprida','3116','','Temperley','Buenos Aires','1951',''),
  (2,1,'Frías','2565','','Avellaneda','Buenos Aires','1983',''),
  (3,2,'Laprida','981','6','Temperley','Buenos Aires','1897',''),
  (4,3,'Sarmiento','2674','','San Vicente','Buenos Aires','1947',''),
  (5,3,'Arenales','513','','Turdera','Buenos Aires','1962',''),
  (6,4,'Ameghino','2287','3A','Luis Guillón','Buenos Aires','1869',''),
  (7,4,'Colombres','1392','','Temperley','Buenos Aires','1854',''),
  (8,5,'Gorriti','2307','','Burzaco','Buenos Aires','1949',''),
  (9,5,'Hipólito Yrigoyen','3195','','Lanús','Buenos Aires','1839',''),
  (10,6,'Alsina','2886','11B','Ezeiza','Buenos Aires','1996',''),
  (11,7,'Ameghino','2179','11A','Avellaneda','Buenos Aires','1839',''),
  (12,8,'Sarmiento','1080','','Temperley','Buenos Aires','1821',''),
  (13,9,'Piaggio','967','12B','Avellaneda','Buenos Aires','1982',''),
  (14,10,'Gorriti','1042','','Lomas de Zamora','Buenos Aires','1818',''),
  (15,11,'Gorriti','641','10B','Villa Fiorito','Buenos Aires','1862',''),
  (16,12,'Colombres','2858','','Lanús','Buenos Aires','1815',''),
  (17,13,'Portela','1123','2A','Lanús','Buenos Aires','1812',''),
  (18,13,'Azara','2071','','Luis Guillón','Buenos Aires','1815',''),
  (19,14,'Gorriti','2811','3','Monte Grande','Buenos Aires','1855',''),
  (20,15,'Frías','428','2B','Temperley','Buenos Aires','1972',''),
  (21,15,'Colombres','2636','','Berazategui','Buenos Aires','1866',''),
  (22,16,'Boedo','400','','Ezeiza','Buenos Aires','1833',''),
  (23,16,'Portela','2325','10B','Lomas de Zamora','Buenos Aires','1970',''),
  (24,17,'Bernardo O Higgins','3039','','Ezeiza','Buenos Aires','1929',''),
  (25,18,'Rivadavia','761','9B','Burzaco','Buenos Aires','1943',''),
  (26,19,'Colombres','1362','','Banfield','Buenos Aires','1891',''),
  (27,20,'Arenales','765','3A','Lomas de Zamora','Buenos Aires','1845',''),
  (28,21,'Arenales','917','8A','Monte Grande','Buenos Aires','1858',''),
  (29,22,'Gorriti','1456','2A','Quilmes','Buenos Aires','1948','');


INSERT INTO equipo (id_equipo, id_domicilio, tipo, marca, modelo, sn, btu_frigorias, fecha_instalacion, estado) VALUES
  (1,1,'Roof Top','BGH','ColdX12','SN000001',2200,'2023-04-08','operativo'),
  (2,2,'Portátil','Hisense','Polar 3000','SN000002',6000,'2023-10-09','operativo'),
  (3,3,'Aire Split','Daikin','ArcticPro','SN000003',4500,'2023-01-24','operativo'),
  (4,4,'Aire Ventana','Surrey','ColdX12','SN000004',3000,'2023-05-03','operativo'),
  (5,5,'Cassette','Samsung','ArcticPro','SN000005',4500,'2023-04-22','operativo'),
  (6,6,'Portátil','LG','ArcticPro','SN000006',2200,'2023-04-27','operativo'),
  (7,7,'Portátil','Daikin','Polar 3000','SN000007',6000,'2023-07-21','operativo'),
  (8,8,'Roof Top','Daikin','Polar 3000','SN000008',3000,'2023-09-16','operativo'),
  (9,9,'Aire Ventana','Hisense','EcoPlus','SN000009',2200,'2023-07-13','operativo'),
  (10,10,'Cassette','Surrey','ArcticPro','SN000010',6000,'2023-03-15','operativo'),
  (11,11,'Cassette','Samsung','EcoPlus','SN000011',2200,'2023-10-11','operativo'),
  (12,12,'Roof Top','Surrey','EcoPlus','SN000012',3000,'2023-03-22','operativo'),
  (13,13,'Cassette','Hisense','ArcticPro','SN000013',6000,'2023-09-15','operativo'),
  (14,14,'Aire Split','LG','ColdX12','SN000014',2200,'2023-06-03','operativo'),
  (15,15,'Roof Top','Hisense','Polar 3000','SN000015',2200,'2023-02-22','operativo'),
  (16,16,'Roof Top','Daikin','ColdX12','SN000016',3000,'2023-04-07','operativo'),
  (17,17,'Portátil','BGH','ColdX12','SN000017',3000,'2023-03-14','operativo'),
  (18,18,'Aire Ventana','Hisense','ColdX12','SN000018',6000,'2023-05-26','operativo'),
  (19,19,'Aire Split','BGH','ArcticPro','SN000019',2200,'2023-01-19','operativo'),
  (20,20,'Aire Ventana','Hisense','ColdX12','SN000020',3000,'2023-10-20','operativo'),
  (21,21,'Aire Ventana','Daikin','Polar 3000','SN000021',4500,'2023-07-05','operativo'),
  (22,22,'Cassette','Surrey','Polar 3000','SN000022',4500,'2023-05-06','operativo'),
  (23,23,'Portátil','Philco','ColdX12','SN000023',3000,'2023-05-04','operativo'),
  (24,24,'Roof Top','Philco','ColdX12','SN000024',2200,'2023-11-14','operativo'),
  (25,25,'Aire Split','Surrey','ColdX12','SN000025',3000,'2023-09-02','operativo'),
  (26,26,'Aire Ventana','LG','ColdX12','SN000026',4500,'2023-09-28','operativo'),
  (27,27,'Cassette','Hisense','Polar 3000','SN000027',4500,'2023-03-26','operativo'),
  (28,28,'Aire Ventana','BGH','Polar 3000','SN000028',6000,'2023-06-09','operativo'),
  (29,29,'Cassette','BGH','ColdX12','SN000029',6000,'2023-06-24','operativo');


INSERT INTO tipo_servicio (id_tipo_servicio, nombre, sla, descripcion) VALUES
  (1,'Instalación',48,'Instalación de equipo nuevo'),
  (2,'Mantenimiento',72,'Mantenimiento preventivo'),
  (3,'Reparación',24,'Reparación por falla'),
  (4,'Carga de gas',24,'Recarga de refrigerante'),
  (5,'Diagnóstico',8,'Diagnóstico técnico'),
  (6,'Retiro',72,'Retiro de equipo'),
  (7,'Limpieza profunda',24,'Limpieza química de unidad interior/ exterior');


INSERT INTO material (id_material, nombre, descripcion, unidad_medida, precio_lista, stock_minimo, activo) VALUES
  (1,'gas R22','Refrigerante R22','kg',45000.00,0.00,TRUE),
  (2,'gas R32','Refrigerante R32','kg',38000.00,0.00,TRUE),
  (3,'gas R410','Refrigerante R410A','kg',42000.00,0.00,TRUE),
  (4,'gas R12','Refrigerante R12','kg',60000.00,0.00,TRUE),
  (5,'gas R134','Refrigerante R134a','kg',39000.00,0.00,TRUE),
  (6,'cinta aislante','Rollo PVC 18mm','metro',180.00,0.00,TRUE),
  (7,'aislante 1/8','Tubo aislante espesor 1/8','metro',1200.00,0.00,TRUE),
  (8,'aislante 5/16','Tubo aislante espesor 5/16','metro',1500.00,0.00,TRUE),
  (9,'aislante 3/8','Tubo aislante espesor 3/8','metro',1700.00,0.00,TRUE),
  (10,'aislante 1/2','Tubo aislante espesor 1/2','metro',2000.00,0.00,TRUE),
  (11,'aislante 5/8','Tubo aislante espesor 5/8','metro',2300.00,0.00,TRUE),
  (12,'aislante 3/4','Tubo aislante espesor 3/4','metro',2600.00,0.00,TRUE),
  (13,'caño de cobre 1/8','Cobre rígido 1/8','metro',2500.00,0.00,TRUE),
  (14,'caño de cobre 5/16','Cobre rígido 5/16','metro',4200.00,0.00,TRUE),
  (15,'caño de cobre 3/8','Cobre rígido 3/8','metro',5200.00,0.00,TRUE),
  (16,'caño de cobre 1/2','Cobre rígido 1/2','metro',6800.00,0.00,TRUE),
  (17,'caño de cobre 5/8','Cobre rígido 5/8','metro',8200.00,0.00,TRUE),
  (18,'caño de cobre 3/4','Cobre rígido 3/4','metro',9900.00,0.00,TRUE),
  (19,'ménsulas','Par de ménsulas para split','unidad',8500.00,0.00,TRUE),
  (20,'nitrógeno','Carga para prueba de estanqueidad (1 litro ≈ 1m3 ref.)','litro',1500.00,0.00,TRUE),
  (21,'tarugos de pared','Tarugo plástico 8mm','unidad',60.00,0.00,TRUE),
  (22,'tornillos tira fondo','Tornillo 8x3”','unidad',120.00,0.00,TRUE),
  (23,'cable 5x2.5mm','Cable tipo taller 5x2.5mm','metro',2500.00,0.00,TRUE),
  (24,'canaleta 60x40','Canaleta PVC 60x40','metro',3200.00,0.00,TRUE),
  (25,'cinta teflón','Rollo 12mm','unidad',350.00,0.00,TRUE),
  (26,'filtro deshidratador 1/4','Filtro línea 1/4','unidad',2800.00,0.00,TRUE),
  (27,'prensa estopa 3/8','Accesorio','unidad',700.00,0.00,TRUE),
  (28,'válvula de servicio 1/4','Válvula','unidad',3200.00,0.00,TRUE);


INSERT INTO proveedor (id_proveedor, razon_social, cuit, correo, tel, direccion, activo) VALUES
  (1,'Frío Norte SA','30-71234567-9','ventas@frionorte.com','+54 11 4300-1000','Parque Industrial Quilmes',TRUE),
  (2,'Termoclima SRL','30-70876543-2','contacto@termoclima.com','+54 11 4200-9900','Lanús Oeste',TRUE),
  (3,'Cobre & Cia','30-70999999-1','compras@cobrecia.com','+54 11 4555-2233','Av. Warnes 1234, CABA',TRUE);


INSERT INTO compra (id_compra, id_proveedor, fecha_compra, nro_comprobante, estado, total, observacion) VALUES
  (1,1,'2024-01-15 11:00:00','FC-0001','pagada',6933200.00,'Refrigerantes e insumos'),
  (2,2,'2024-07-10 15:30:00','FC-0107','pagada',4837200.00,'Cobre y aislantes'),
  (3,3,'2025-02-05 10:15:00','FC-0230','pagada',8929000.00,'Cables, canaletas y varios');


INSERT INTO compra_detalle (id_compra_detalle, id_compra, id_material, cantidad, precio_unitario) VALUES
  (1,1,1,40,45000.00),
  (2,1,2,60,38000.00),
  (3,1,3,60,42000.00),
  (4,1,20,200,1500.00),
  (5,1,22,160,120.00),
  (6,1,25,40,350.00),
  (7,2,13,110,2500.00),
  (8,2,14,80,4200.00),
  (9,2,15,87,5200.00),
  (10,2,16,98,6800.00),
  (11,2,17,92,8200.00),
  (12,2,18,67,9900.00),
  (13,2,7,129,1200.00),
  (14,2,8,104,1500.00),
  (15,2,9,112,1700.00),
  (16,2,10,85,2000.00),
  (17,2,11,135,2300.00),
  (18,2,12,80,2600.00),
  (19,2,23,200,2500.00),
  (20,3,21,1600,60.00),
  (21,3,19,280,8500.00),
  (22,3,24,300,3200.00),
  (23,3,26,100,2800.00),
  (24,3,20,500,1500.00),
  (25,3,5,50,39000.00),
  (26,3,6,500,180.00),
  (28,3,18,120,9900.00),
  (29,3,4,20,60000.00),
  (31,3,27,50,700.00);

INSERT INTO orden_servicio (id_orden, id_cliente, id_domicilio, id_equipo, id_tipo_servicio, id_tecnico, fecha_creacion, fecha_entrega_aprox, prioridad, estado, obs) VALUES
  (1,17,24,24,4,1,'2025-05-31 07:15:00','2025-06-01 07:15:00','alta','abierta',''),
  (2,20,27,27,5,1,'2024-08-24 09:35:00','2024-08-25 09:35:00','baja','en curso',''),
  (3,8,12,12,7,2,'2024-04-24 19:50:00','2024-04-25 03:50:00','baja','abierta',''),
  (4,8,12,12,1,2,'2024-04-04 15:15:00','2024-04-06 15:15:00','baja','cerrada',''),
  (5,21,28,28,4,1,'2025-07-08 14:25:00','2025-07-09 14:25:00','baja','abierta',''),
  (6,14,19,19,5,4,'2024-11-19 07:35:00','2024-11-19 15:35:00','baja','cerrada',''),
  (7,9,13,13,1,4,'2024-09-18 10:50:00','2024-09-20 10:50:00','alta','abierta',''),
  (8,21,28,28,7,4,'2024-05-21 12:40:00','2024-05-21 20:40:00','media','en curso',''),
  (9,12,16,16,7,1,'2025-08-09 04:55:00','2025-08-09 12:55:00','baja','abierta',''),
  (10,20,27,27,3,1,'2025-03-25 20:25:00','2025-03-26 04:25:00','media','en curso',''),
  (11,10,14,14,3,4,'2025-05-29 04:35:00','2025-05-30 04:35:00','baja','en curso',''),
  (12,14,19,19,5,4,'2024-12-27 10:50:00','2024-12-29 10:50:00','alta','en curso',''),
  (13,11,15,15,2,3,'2025-09-12 01:40:00','2025-09-13 01:40:00','media','abierta',''),
  (14,16,23,23,7,1,'2024-03-13 15:35:00','2024-03-14 15:35:00','baja','en curso',''),
  (15,9,13,13,2,1,'2025-07-14 14:40:00','2025-07-15 06:40:00','media','abierta',''),
  (16,10,14,14,2,3,'2024-01-12 08:40:00','2024-01-15 08:40:00','baja','abierta',''),
  (17,9,13,13,7,1,'2024-11-07 14:40:00','2024-11-09 14:40:00','baja','en curso',''),
  (18,17,24,24,4,3,'2025-04-02 11:50:00','2025-04-04 11:50:00','media','en curso',''),
  (19,18,25,25,1,4,'2024-12-16 06:55:00','2024-12-19 06:55:00','media','abierta',''),
  (20,4,6,6,3,2,'2024-02-25 20:10:00','2024-02-26 04:10:00','baja','cerrada',''),
  (21,3,4,4,7,3,'2025-03-23 23:00:00','2025-03-24 07:00:00','baja','en curso',''),
  (22,22,29,29,3,4,'2025-06-23 04:00:00','2025-06-25 04:00:00','media','cerrada',''),
  (23,7,11,11,6,4,'2025-08-13 16:15:00','2025-08-14 00:15:00','baja','abierta',''),
  (24,18,25,25,2,1,'2024-12-24 19:00:00','2024-12-25 03:00:00','alta','cerrada',''),
  (25,3,5,5,3,3,'2025-09-29 17:05:00','2025-09-30 01:05:00','media','cerrada',''),
  (26,8,12,12,3,4,'2025-07-02 03:20:00','2025-07-04 03:20:00','media','cerrada',''),
  (27,16,23,23,5,4,'2025-05-20 02:45:00','2025-05-20 10:45:00','media','cerrada',''),
  (28,4,6,6,2,3,'2024-01-23 20:35:00','2024-01-24 04:35:00','media','cerrada',''),
  (29,3,5,5,4,2,'2024-06-29 17:15:00','2024-07-01 17:15:00','alta','abierta',''),
  (30,7,11,11,1,2,'2024-10-23 14:05:00','2024-10-26 14:05:00','media','en curso',''),
  (31,10,14,14,2,2,'2025-04-27 15:15:00','2025-04-28 15:15:00','alta','cerrada',''),
  (32,11,15,15,2,2,'2025-09-03 06:35:00','2025-09-06 06:35:00','media','en curso',''),
  (33,22,29,29,1,4,'2024-01-12 04:25:00','2024-01-13 04:25:00','alta','abierta',''),
  (34,21,28,28,6,4,'2024-03-31 23:55:00','2024-04-01 15:55:00','baja','cerrada','');


INSERT INTO detalle_orden (id_detalle, id_orden, descripcion, horas, precio_hora, id_material, cantidad, precio_unitario, subtotal, observaciones) VALUES
  (1,1,'Mano de obra',5,15000,NULL,0,0,75000,''),
  (2,1,'Material: caño de cobre 5/16',0,0,14,12,4238.35,50860.2,''),
  (3,1,'Material: aislante 5/8',0,0,11,3,2273.25,6819.74,''),
  (4,1,'Material: caño de cobre 1/8',0,0,13,11,2845.18,31297.0,''),
  (5,2,'Mano de obra',4,15000,NULL,0,0,60000,''),
  (6,2,'Material: aislante 1/8',0,0,7,12,1180.73,14168.71,''),
  (7,2,'Material: caño de cobre 5/8',0,0,17,2,8255.41,16510.82,''),
  (8,2,'Material: caño de cobre 1/2',0,0,16,11,7320.8,80528.8,''),
  (9,3,'Mano de obra',4,15000,NULL,0,0,60000,''),
  (10,3,'Material: ménsulas',0,0,19,12,8727.76,104733.16,''),
  (11,3,'Material: aislante 1/8',0,0,7,7,1198.56,8389.89,''),
  (12,3,'Material: cable 5x2.5mm',0,0,23,11,2718.81,29906.92,''),
  (13,4,'Mano de obra',5,18000,NULL,0,0,90000,''),
  (14,4,'Material: caño de cobre 5/16',0,0,14,8,4743.65,37949.24,''),
  (15,4,'Material: prensa estopa 3/8',0,0,27,12,785.61,9427.31,''),
  (16,4,'Material: caño de cobre 3/4',0,0,18,8,9918.2,79345.59,''),
  (17,5,'Mano de obra',2,12000,NULL,0,0,24000,''),
  (18,5,'Material: caño de cobre 1/8',0,0,13,12,2451.4,29416.83,''),
  (19,6,'Mano de obra',5,15000,NULL,0,0,75000,''),
  (20,6,'Material: gas R22',0,0,1,2.14,46259.88,98996.14,''),
  (21,6,'Material: aislante 3/4',0,0,12,7,2749.87,19249.12,''),
  (22,7,'Mano de obra',5,18000,NULL,0,0,90000,''),
  (23,7,'Material: caño de cobre 1/8',0,0,13,10,2657.2,26571.96,''),
  (24,8,'Mano de obra',3,15000,NULL,0,0,45000,''),
  (25,8,'Material: aislante 3/8',0,0,9,7,1700.77,11905.41,''),
  (26,8,'Material: cinta teflón',0,0,25,2,365.42,730.84,''),
  (27,9,'Mano de obra',2,12000,NULL,0,0,24000,''),
  (28,9,'Material: tornillos tira fondo',0,0,22,10,136.75,1367.46,''),
  (29,9,'Material: gas R12',0,0,4,3.06,60074.92,183829.27,''),
  (30,10,'Mano de obra',6,12000,NULL,0,0,72000,''),
  (31,10,'Material: ménsulas',0,0,19,12,9486.97,113843.66,''),
  (32,11,'Mano de obra',4,15000,NULL,0,0,60000,''),
  (33,11,'Material: caño de cobre 5/16',0,0,14,6,4523.89,27143.35,''),
  (34,12,'Mano de obra',1.5,15000,NULL,0,0,22500.0,''),
  (35,12,'Material: aislante 5/16',0,0,8,8,1595.95,12767.64,''),
  (36,12,'Material: cinta teflón',0,0,25,11,359.03,3949.32,''),
  (37,13,'Mano de obra',5,12000,NULL,0,0,60000,''),
  (38,13,'Material: aislante 5/16',0,0,8,12,1546.93,18563.14,''),
  (39,14,'Mano de obra',6,18000,NULL,0,0,108000,''),
  (40,14,'Material: caño de cobre 1/2',0,0,16,9,6927.51,62347.59,''),
  (41,14,'Material: caño de cobre 3/4',0,0,18,12,10494.77,125937.23,''),
  (42,15,'Mano de obra',2,18000,NULL,0,0,36000,''),
  (43,15,'Material: aislante 3/8',0,0,9,10,1947.05,19470.46,''),
  (44,15,'Material: canaleta 60x40',0,0,24,9,3421.95,30797.51,''),
  (45,16,'Mano de obra',6,12000,NULL,0,0,72000,''),
  (46,16,'Material: válvula de servicio 1/4',0,0,28,2,3598.54,7197.08,''),
  (47,16,'Material: cinta teflón',0,0,25,10,352.4,3524.04,''),
  (48,16,'Material: caño de cobre 1/2',0,0,16,8,7059.04,56472.3,''),
  (49,17,'Mano de obra',2,18000,NULL,0,0,36000,''),
  (50,17,'Material: gas R410',0,0,3,1.15,46321.32,53269.52,''),
  (51,17,'Material: aislante 5/16',0,0,8,10,1603.84,16038.38,''),
  (52,18,'Mano de obra',2,18000,NULL,0,0,36000,''),
  (53,18,'Material: aislante 3/8',0,0,9,11,1642.6,18068.64,''),
  (54,19,'Mano de obra',6,15000,NULL,0,0,90000,''),
  (55,19,'Material: válvula de servicio 1/4',0,0,28,11,3189.39,35083.3,''),
  (56,19,'Material: caño de cobre 3/8',0,0,15,5,5759.34,28796.71,''),
  (57,19,'Material: gas R410',0,0,3,3.94,45453.94,179088.51,''),
  (58,20,'Mano de obra',1.5,15000,NULL,0,0,22500.0,''),
  (59,20,'Material: aislante 1/2',0,0,10,5,2100.19,10500.94,''),
  (60,20,'Material: cable 5x2.5mm',0,0,23,8,2593.88,20751.04,''),
  (61,20,'Material: caño de cobre 1/8',0,0,13,10,2394.93,23949.3,''),
  (62,21,'Mano de obra',2,18000,NULL,0,0,36000,''),
  (63,21,'Material: tarugos de pared',0,0,21,8,68.63,549.03,''),
  (64,21,'Material: prensa estopa 3/8',0,0,27,8,713.71,5709.72,''),
  (65,22,'Mano de obra',4,12000,NULL,0,0,48000,''),
  (66,22,'Material: aislante 3/8',0,0,9,2,1944.86,3889.73,''),
  (67,22,'Material: aislante 5/8',0,0,11,7,2582.86,18080.01,''),
  (68,23,'Mano de obra',4,18000,NULL,0,0,72000,''),
  (69,23,'Material: gas R12',0,0,4,5.85,64306.46,376192.79,''),
  (70,23,'Material: gas R22',0,0,1,1.82,44175.4,80399.23,''),
  (71,24,'Mano de obra',5,18000,NULL,0,0,90000,''),
  (72,24,'Material: caño de cobre 5/16',0,0,14,8,4813.41,38507.24,''),
  (73,24,'Material: prensa estopa 3/8',0,0,27,4,728.95,2915.8,''),
  (74,25,'Mano de obra',4,18000,NULL,0,0,72000,''),
  (75,25,'Material: aislante 3/4',0,0,12,9,2866.69,25800.24,''),
  (76,25,'Material: aislante 5/8',0,0,11,7,2394.46,16761.21,''),
  (77,26,'Mano de obra',1.5,12000,NULL,0,0,18000.0,''),
  (78,26,'Material: ménsulas',0,0,19,2,9561.12,19122.25,''),
  (79,26,'Material: aislante 5/8',0,0,11,8,2230.87,17846.94,''),
  (80,26,'Material: válvula de servicio 1/4',0,0,28,8,3049.82,24398.58,''),
  (81,27,'Mano de obra',6,18000,NULL,0,0,108000,''),
  (82,27,'Material: válvula de servicio 1/4',0,0,28,1,3435.17,3435.17,''),
  (83,27,'Material: caño de cobre 3/4',0,0,18,4,10654.7,42618.8,''),
  (84,28,'Mano de obra',3,15000,NULL,0,0,45000,''),
  (85,28,'Material: aislante 5/16',0,0,8,9,1548.62,13937.54,''),
  (86,29,'Mano de obra',4,15000,NULL,0,0,60000,''),
  (87,29,'Material: caño de cobre 3/4',0,0,18,8,11276.57,90212.53,''),
  (88,29,'Material: cinta aislante',0,0,6,10,181.77,1817.7,''),
  (89,29,'Material: gas R410',0,0,3,5.79,45698.63,264595.09,''),
  (90,30,'Mano de obra',6,15000,NULL,0,0,90000,''),
  (91,30,'Material: gas R22',0,0,1,5.26,49754.8,261710.27,''),
  (92,30,'Material: ménsulas',0,0,19,1,9623.05,9623.05,''),
  (93,31,'Mano de obra',6,18000,NULL,0,0,108000,''),
  (94,31,'Material: aislante 1/2',0,0,10,8,1913.35,15306.77,''),
  (95,32,'Mano de obra',3,15000,NULL,0,0,45000,''),
  (96,32,'Material: canaleta 60x40',0,0,24,6,3554.71,21328.25,''),
  (97,32,'Material: válvula de servicio 1/4',0,0,28,8,3656.25,29250.01,''),
  (98,33,'Mano de obra',5,15000,NULL,0,0,75000,''),
  (99,33,'Material: aislante 3/4',0,0,12,4,2715.17,10860.67,''),
  (100,33,'Material: gas R12',0,0,4,3.91,68318.03,267123.5,''),
  (101,33,'Material: tornillos tira fondo',0,0,22,6,135.97,815.8,''),
  (102,34,'Mano de obra',1.5,12000,NULL,0,0,18000.0,''),
  (103,34,'Material: caño de cobre 3/4',0,0,18,3,10174.52,30523.56,'');


INSERT INTO agenda_visita (id_visita, id_orden, fecha_visita, franja_horaria, id_tecnico, estado, observaciones) VALUES
  (1,1,'2025-05-31 21:15:00','14-18',1,'realizada',''),
  (2,2,'2024-08-27 01:35:00','08-12',1,'realizada',''),
  (3,3,'2024-04-28 04:50:00','08-12',2,'realizada',''),
  (4,4,'2024-04-07 07:15:00','08-12',2,'realizada',''),
  (5,5,'2025-07-10 23:25:00','14-18',1,'realizada',''),
  (6,6,'2024-11-22 16:35:00','14-18',4,'realizada',''),
  (7,7,'2024-09-21 21:50:00','14-18',4,'realizada',''),
  (8,8,'2024-05-23 04:40:00','08-12',4,'realizada',''),
  (9,9,'2025-08-09 15:55:00','14-18',1,'realizada',''),
  (10,10,'2025-03-29 12:25:00','14-18',1,'realizada',''),
  (11,11,'2025-05-31 13:35:00','14-18',4,'realizada',''),
  (12,12,'2024-12-29 21:50:00','14-18',4,'realizada',''),
  (13,13,'2025-09-14 10:40:00','08-12',3,'realizada',''),
  (14,14,'2024-03-15 05:35:00','08-12',1,'realizada',''),
  (15,15,'2025-07-16 01:40:00','08-12',1,'realizada',''),
  (16,16,'2024-01-12 22:40:00','14-18',3,'realizada',''),
  (17,17,'2024-11-08 01:40:00','08-12',1,'realizada',''),
  (18,18,'2025-04-02 20:50:00','14-18',3,'realizada',''),
  (19,19,'2024-12-17 20:55:00','14-18',4,'realizada',''),
  (20,20,'2024-02-28 12:10:00','14-18',2,'realizada',''),
  (21,21,'2025-03-27 13:00:00','14-18',3,'realizada',''),
  (22,22,'2025-06-26 13:00:00','14-18',4,'realizada',''),
  (23,23,'2025-08-15 06:15:00','08-12',4,'realizada',''),
  (24,24,'2024-12-28 09:00:00','08-12',1,'realizada',''),
  (25,25,'2025-10-03 04:05:00','08-12',3,'realizada',''),
  (26,26,'2025-07-03 19:20:00','14-18',4,'realizada',''),
  (27,27,'2025-05-23 16:45:00','14-18',4,'realizada',''),
  (28,28,'2024-01-26 10:35:00','08-12',3,'realizada',''),
  (29,29,'2024-07-02 02:15:00','08-12',2,'realizada',''),
  (30,30,'2024-10-25 23:05:00','14-18',2,'realizada',''),
  (31,31,'2025-04-29 00:15:00','08-12',2,'realizada',''),
  (32,32,'2025-09-05 17:35:00','14-18',2,'realizada',''),
  (33,33,'2024-01-14 18:25:00','14-18',4,'realizada',''),
  (34,34,'2024-04-03 15:55:00','14-18',4,'realizada','');


INSERT INTO bitacora_estado (id_bitacora, id_orden, fecha_evento, estado, motivo, id_tecnico, observacion) VALUES
  (1,1,'2025-05-31 07:15:00','abierta','',1,''),
  (2,1,'2025-06-01 07:15:00','en curso','',1,''),
  (3,2,'2024-08-24 09:35:00','abierta','',1,''),
  (4,2,'2024-08-24 21:35:00','en curso','',1,''),
  (5,3,'2024-04-24 19:50:00','abierta','',2,''),
  (6,3,'2024-04-24 23:50:00','en curso','',2,''),
  (7,4,'2024-04-04 15:15:00','abierta','',2,''),
  (8,4,'2024-04-04 19:15:00','en curso','',2,''),
  (9,4,'2024-04-06 15:15:00','cerrada','',2,''),
  (10,5,'2025-07-08 14:25:00','abierta','',1,''),
  (11,5,'2025-07-08 18:25:00','en curso','',1,''),
  (12,6,'2024-11-19 07:35:00','abierta','',4,''),
  (13,6,'2024-11-20 07:35:00','en curso','',4,''),
  (14,6,'2024-11-20 19:35:00','cerrada','',4,''),
  (15,7,'2024-09-18 10:50:00','abierta','',4,''),
  (16,7,'2024-09-18 14:50:00','en curso','',4,''),
  (17,8,'2024-05-21 12:40:00','abierta','',4,''),
  (18,8,'2024-05-22 12:40:00','en curso','',4,''),
  (19,9,'2025-08-09 04:55:00','abierta','',1,''),
  (20,9,'2025-08-09 16:55:00','en curso','',1,''),
  (21,10,'2025-03-25 20:25:00','abierta','',1,''),
  (22,10,'2025-03-26 00:25:00','en curso','',1,''),
  (23,11,'2025-05-29 04:35:00','abierta','',4,''),
  (24,11,'2025-05-29 16:35:00','en curso','',4,''),
  (25,12,'2024-12-27 10:50:00','abierta','',4,''),
  (26,12,'2024-12-27 14:50:00','en curso','',4,''),
  (27,13,'2025-09-12 01:40:00','abierta','',3,''),
  (28,13,'2025-09-13 01:40:00','en curso','',3,''),
  (29,14,'2024-03-13 15:35:00','abierta','',1,''),
  (30,14,'2024-03-14 03:35:00','en curso','',1,''),
  (31,15,'2025-07-14 14:40:00','abierta','',1,''),
  (32,15,'2025-07-14 18:40:00','en curso','',1,''),
  (33,16,'2024-01-12 08:40:00','abierta','',3,''),
  (34,16,'2024-01-12 12:40:00','en curso','',3,''),
  (35,17,'2024-11-07 14:40:00','abierta','',1,''),
  (36,17,'2024-11-08 14:40:00','en curso','',1,''),
  (37,18,'2025-04-02 11:50:00','abierta','',3,''),
  (38,18,'2025-04-02 15:50:00','en curso','',3,''),
  (39,19,'2024-12-16 06:55:00','abierta','',4,''),
  (40,19,'2024-12-16 10:55:00','en curso','',4,''),
  (41,20,'2024-02-25 20:10:00','abierta','',2,''),
  (42,20,'2024-02-26 08:10:00','en curso','',2,''),
  (43,20,'2024-02-27 20:10:00','cerrada','',2,''),
  (44,21,'2025-03-23 23:00:00','abierta','',3,''),
  (45,21,'2025-03-24 11:00:00','en curso','',3,''),
  (46,22,'2025-06-23 04:00:00','abierta','',4,''),
  (47,22,'2025-06-23 08:00:00','en curso','',4,''),
  (48,22,'2025-06-26 04:00:00','cerrada','',4,''),
  (49,23,'2025-08-13 16:15:00','abierta','',4,''),
  (50,23,'2025-08-14 16:15:00','en curso','',4,''),
  (51,24,'2024-12-24 19:00:00','abierta','',1,''),
  (52,24,'2024-12-24 23:00:00','en curso','',1,''),
  (53,24,'2024-12-27 19:00:00','cerrada','',1,''),
  (54,25,'2025-09-29 17:05:00','abierta','',3,''),
  (55,25,'2025-09-30 05:05:00','en curso','',3,''),
  (56,25,'2025-10-01 05:05:00','cerrada','',3,''),
  (57,26,'2025-07-02 03:20:00','abierta','',4,''),
  (58,26,'2025-07-02 07:20:00','en curso','',4,''),
  (59,26,'2025-07-05 03:20:00','cerrada','',4,''),
  (60,27,'2025-05-20 02:45:00','abierta','',4,''),
  (61,27,'2025-05-20 14:45:00','en curso','',4,''),
  (62,27,'2025-05-21 14:45:00','cerrada','',4,''),
  (63,28,'2024-01-23 20:35:00','abierta','',3,''),
  (64,28,'2024-01-24 20:35:00','en curso','',3,''),
  (65,28,'2024-01-25 08:35:00','cerrada','',3,''),
  (66,29,'2024-06-29 17:15:00','abierta','',2,''),
  (67,29,'2024-06-30 05:15:00','en curso','',2,''),
  (68,30,'2024-10-23 14:05:00','abierta','',2,''),
  (69,30,'2024-10-24 14:05:00','en curso','',2,''),
  (70,31,'2025-04-27 15:15:00','abierta','',2,''),
  (71,31,'2025-04-28 03:15:00','en curso','',2,''),
  (72,31,'2025-04-29 03:15:00','cerrada','',2,''),
  (73,32,'2025-09-03 06:35:00','abierta','',2,''),
  (74,32,'2025-09-03 10:35:00','en curso','',2,''),
  (75,33,'2024-01-12 04:25:00','abierta','',4,''),
  (76,33,'2024-01-12 08:25:00','en curso','',4,''),
  (77,34,'2024-03-31 23:55:00','abierta','',4,''),
  (78,34,'2024-04-01 11:55:00','en curso','',4,''),
  (79,34,'2024-04-03 23:55:00','cerrada','',4,'');


INSERT INTO stock_movimiento (id_movimiento, id_material, fecha_mov, tipo_mov, cantidad, comentario, id_orden, id_compra) VALUES
  (1,1,'2024-01-15 11:00:00','ingreso',40,'Ingreso compra 1',NULL,1),
  (2,2,'2024-01-15 11:00:00','ingreso',60,'Ingreso compra 1',NULL,1),
  (3,3,'2024-01-15 11:00:00','ingreso',60,'Ingreso compra 1',NULL,1),
  (4,20,'2024-01-15 11:00:00','ingreso',200,'Ingreso compra 1',NULL,1),
  (5,22,'2024-01-15 11:00:00','ingreso',160,'Ingreso compra 1',NULL,1),
  (6,25,'2024-01-15 11:00:00','ingreso',40,'Ingreso compra 1',NULL,1),
  (7,13,'2024-07-10 15:30:00','ingreso',110,'Ingreso compra 2',NULL,2),
  (8,14,'2024-07-10 15:30:00','ingreso',80,'Ingreso compra 2',NULL,2),
  (9,15,'2024-07-10 15:30:00','ingreso',87,'Ingreso compra 2',NULL,2),
  (10,16,'2024-07-10 15:30:00','ingreso',98,'Ingreso compra 2',NULL,2),
  (11,17,'2024-07-10 15:30:00','ingreso',92,'Ingreso compra 2',NULL,2),
  (12,18,'2024-07-10 15:30:00','ingreso',67,'Ingreso compra 2',NULL,2),
  (13,7,'2024-07-10 15:30:00','ingreso',129,'Ingreso compra 2',NULL,2),
  (14,8,'2024-07-10 15:30:00','ingreso',104,'Ingreso compra 2',NULL,2),
  (15,9,'2024-07-10 15:30:00','ingreso',112,'Ingreso compra 2',NULL,2),
  (16,10,'2024-07-10 15:30:00','ingreso',85,'Ingreso compra 2',NULL,2),
  (17,11,'2024-07-10 15:30:00','ingreso',135,'Ingreso compra 2',NULL,2),
  (18,12,'2024-07-10 15:30:00','ingreso',80,'Ingreso compra 2',NULL,2),
  (19,23,'2024-07-10 15:30:00','ingreso',200,'Ingreso compra 2',NULL,2),
  (20,21,'2025-02-05 10:15:00','ingreso',1600,'Ingreso compra 3',NULL,3),
  (21,19,'2025-02-05 10:15:00','ingreso',280,'Ingreso compra 3',NULL,3),
  (22,24,'2025-02-05 10:15:00','ingreso',300,'Ingreso compra 3',NULL,3),
  (23,26,'2025-02-05 10:15:00','ingreso',100,'Ingreso compra 3',NULL,3),
  (24,20,'2025-02-05 10:15:00','ingreso',500,'Ingreso compra 3',NULL,3),
  (25,5,'2025-02-05 10:15:00','ingreso',50,'Ingreso compra 3',NULL,3),
  (26,6,'2025-02-05 10:15:00','ingreso',500,'Ingreso compra 3',NULL,3),
  (27,18,'2025-02-05 10:15:00','ingreso',120,'Ingreso compra 3',NULL,3),
  (28,4,'2025-02-05 10:15:00','ingreso',20,'Ingreso compra 3',NULL,3),
  (29,27,'2025-02-05 10:15:00','ingreso',50,'Ingreso compra 3',NULL,3),
  (30,14,'2025-05-31 09:15:00','egreso',12,'Consumo OS #1',1,NULL),
  (31,11,'2025-05-31 09:15:00','egreso',3,'Consumo OS #1',1,NULL),
  (32,13,'2025-05-31 09:15:00','egreso',11,'Consumo OS #1',1,NULL),
  (33,7,'2024-08-24 11:35:00','egreso',12,'Consumo OS #2',2,NULL),
  (34,17,'2024-08-24 11:35:00','egreso',2,'Consumo OS #2',2,NULL),
  (35,16,'2024-08-24 11:35:00','egreso',11,'Consumo OS #2',2,NULL),
  (36,19,'2024-04-24 21:50:00','egreso',12,'Consumo OS #3',3,NULL),
  (37,7,'2024-04-24 21:50:00','egreso',7,'Consumo OS #3',3,NULL),
  (38,23,'2024-04-24 21:50:00','egreso',11,'Consumo OS #3',3,NULL),
  (39,14,'2024-04-04 17:15:00','egreso',8,'Consumo OS #4',4,NULL),
  (40,27,'2024-04-04 17:15:00','egreso',12,'Consumo OS #4',4,NULL),
  (41,18,'2024-04-04 17:15:00','egreso',8,'Consumo OS #4',4,NULL),
  (42,13,'2025-07-08 16:25:00','egreso',12,'Consumo OS #5',5,NULL),
  (43,1,'2024-11-19 09:35:00','egreso',2.14,'Consumo OS #6',6,NULL),
  (44,12,'2024-11-19 09:35:00','egreso',7,'Consumo OS #6',6,NULL),
  (45,13,'2024-09-18 12:50:00','egreso',10,'Consumo OS #7',7,NULL),
  (46,9,'2024-05-21 14:40:00','egreso',7,'Consumo OS #8',8,NULL),
  (47,25,'2024-05-21 14:40:00','egreso',2,'Consumo OS #8',8,NULL),
  (48,22,'2025-08-09 06:55:00','egreso',10,'Consumo OS #9',9,NULL),
  (49,4,'2025-08-09 06:55:00','egreso',3.06,'Consumo OS #9',9,NULL),
  (50,19,'2025-03-25 22:25:00','egreso',12,'Consumo OS #10',10,NULL),
  (51,14,'2025-05-29 06:35:00','egreso',6,'Consumo OS #11',11,NULL),
  (52,8,'2024-12-27 12:50:00','egreso',8,'Consumo OS #12',12,NULL),
  (53,25,'2024-12-27 12:50:00','egreso',11,'Consumo OS #12',12,NULL),
  (54,8,'2025-09-12 03:40:00','egreso',12,'Consumo OS #13',13,NULL),
  (55,16,'2024-03-13 17:35:00','egreso',9,'Consumo OS #14',14,NULL),
  (56,18,'2024-03-13 17:35:00','egreso',12,'Consumo OS #14',14,NULL),
  (57,9,'2025-07-14 16:40:00','egreso',10,'Consumo OS #15',15,NULL),
  (58,24,'2025-07-14 16:40:00','egreso',9,'Consumo OS #15',15,NULL),
  (59,28,'2024-01-12 10:40:00','egreso',2,'Consumo OS #16',16,NULL),
  (60,25,'2024-01-12 10:40:00','egreso',10,'Consumo OS #16',16,NULL),
  (61,16,'2024-01-12 10:40:00','egreso',8,'Consumo OS #16',16,NULL),
  (62,3,'2024-11-07 16:40:00','egreso',1.15,'Consumo OS #17',17,NULL),
  (63,8,'2024-11-07 16:40:00','egreso',10,'Consumo OS #17',17,NULL),
  (64,9,'2025-04-02 13:50:00','egreso',11,'Consumo OS #18',18,NULL),
  (65,28,'2024-12-16 08:55:00','egreso',11,'Consumo OS #19',19,NULL),
  (66,15,'2024-12-16 08:55:00','egreso',5,'Consumo OS #19',19,NULL),
  (67,3,'2024-12-16 08:55:00','egreso',3.94,'Consumo OS #19',19,NULL),
  (68,10,'2024-02-25 22:10:00','egreso',5,'Consumo OS #20',20,NULL),
  (69,23,'2024-02-25 22:10:00','egreso',8,'Consumo OS #20',20,NULL),
  (70,13,'2024-02-25 22:10:00','egreso',10,'Consumo OS #20',20,NULL),
  (71,21,'2025-03-24 01:00:00','egreso',8,'Consumo OS #21',21,NULL),
  (72,27,'2025-03-24 01:00:00','egreso',8,'Consumo OS #21',21,NULL),
  (73,9,'2025-06-23 06:00:00','egreso',2,'Consumo OS #22',22,NULL),
  (74,11,'2025-06-23 06:00:00','egreso',7,'Consumo OS #22',22,NULL),
  (75,4,'2025-08-13 18:15:00','egreso',5.85,'Consumo OS #23',23,NULL),
  (76,1,'2025-08-13 18:15:00','egreso',1.82,'Consumo OS #23',23,NULL),
  (77,14,'2024-12-24 21:00:00','egreso',8,'Consumo OS #24',24,NULL),
  (78,27,'2024-12-24 21:00:00','egreso',4,'Consumo OS #24',24,NULL),
  (79,12,'2025-09-29 19:05:00','egreso',9,'Consumo OS #25',25,NULL),
  (80,11,'2025-09-29 19:05:00','egreso',7,'Consumo OS #25',25,NULL),
  (81,19,'2025-07-02 05:20:00','egreso',2,'Consumo OS #26',26,NULL),
  (82,11,'2025-07-02 05:20:00','egreso',8,'Consumo OS #26',26,NULL),
  (83,28,'2025-07-02 05:20:00','egreso',8,'Consumo OS #26',26,NULL),
  (84,28,'2025-05-20 04:45:00','egreso',1,'Consumo OS #27',27,NULL),
  (85,18,'2025-05-20 04:45:00','egreso',4,'Consumo OS #27',27,NULL),
  (86,8,'2024-01-23 22:35:00','egreso',9,'Consumo OS #28',28,NULL),
  (87,18,'2024-06-29 19:15:00','egreso',8,'Consumo OS #29',29,NULL),
  (88,6,'2024-06-29 19:15:00','egreso',10,'Consumo OS #29',29,NULL),
  (89,3,'2024-06-29 19:15:00','egreso',5.79,'Consumo OS #29',29,NULL),
  (90,1,'2024-10-23 16:05:00','egreso',5.26,'Consumo OS #30',30,NULL),
  (91,19,'2024-10-23 16:05:00','egreso',1,'Consumo OS #30',30,NULL),
  (92,10,'2025-04-27 17:15:00','egreso',8,'Consumo OS #31',31,NULL),
  (93,24,'2025-09-03 08:35:00','egreso',6,'Consumo OS #32',32,NULL),
  (94,28,'2025-09-03 08:35:00','egreso',8,'Consumo OS #32',32,NULL),
  (95,12,'2024-01-12 06:25:00','egreso',4,'Consumo OS #33',33,NULL),
  (96,4,'2024-01-12 06:25:00','egreso',3.91,'Consumo OS #33',33,NULL),
  (97,22,'2024-01-12 06:25:00','egreso',6,'Consumo OS #33',33,NULL),
  (98,18,'2024-04-01 01:55:00','egreso',3,'Consumo OS #34',34,NULL);


INSERT INTO fact_servicio (id_fact, id_orden, id_cliente, id_tecnico, id_tipo_servicio, id_equipo, fecha_creacion, fecha_compromiso, fecha_cierre, horas_sla, horas_reales, incumplio_sla, prioridad_snap, estado_final, costo_materiales, costo_mano_obra, calificacion, comentarios) VALUES
  (1,1,17,1,4,24,'2025-05-31 07:15:00','2025-06-01 07:15:00',NULL,24.0,24.0,0,'alta','abierta',88976.94,75000.00,4,''),
  (2,2,20,1,5,27,'2024-08-24 09:35:00','2024-08-25 09:35:00',NULL,8.0,24.0,1,'baja','en curso',111208.33,60000.00,5,''),
  (3,3,8,2,7,12,'2024-04-24 19:50:00','2024-04-25 03:50:00',NULL,24.0,8.0,0,'baja','abierta',143029.97,60000.00,NULL,''),
  (4,4,8,2,1,12,'2024-04-04 15:15:00','2024-04-06 15:15:00','2024-04-07 15:15:00',48.0,72.0,1,'baja','cerrada',126722.14,90000.00,NULL,''),
  (5,5,21,1,4,28,'2025-07-08 14:25:00','2025-07-09 14:25:00',NULL,24.0,24.0,0,'baja','abierta',29416.83,24000.00,5,''),
  (6,6,14,4,5,19,'2024-11-19 07:35:00','2024-11-19 15:35:00','2024-11-21 19:35:00',8.0,60.0,1,'baja','cerrada',118245.26,75000.00,3,''),
  (7,7,9,4,1,13,'2024-09-18 10:50:00','2024-09-20 10:50:00',NULL,48.0,48.0,0,'alta','abierta',26571.96,90000.00,5,''),
  (8,8,21,4,7,28,'2024-05-21 12:40:00','2024-05-21 20:40:00',NULL,24.0,8.0,0,'media','en curso',12636.25,45000.00,NULL,''),
  (9,9,12,1,7,16,'2025-08-09 04:55:00','2025-08-09 12:55:00',NULL,24.0,8.0,0,'baja','abierta',185196.73,24000.00,4,''),
  (10,10,20,1,3,27,'2025-03-25 20:25:00','2025-03-26 04:25:00',NULL,24.0,8.0,0,'media','en curso',113843.66,72000.00,5,''),
  (11,11,10,4,3,14,'2025-05-29 04:35:00','2025-05-30 04:35:00',NULL,24.0,24.0,0,'baja','en curso',27143.35,60000.00,4,''),
  (12,12,14,4,5,19,'2024-12-27 10:50:00','2024-12-29 10:50:00',NULL,8.0,48.0,1,'alta','en curso',16716.96,22500.00,NULL,''),
  (13,13,11,3,2,15,'2025-09-12 01:40:00','2025-09-13 01:40:00',NULL,72.0,24.0,0,'media','abierta',18563.14,60000.00,3,''),
  (14,14,16,1,7,23,'2024-03-13 15:35:00','2024-03-14 15:35:00',NULL,24.0,24.0,0,'baja','en curso',188284.82,108000.00,NULL,''),
  (15,15,9,1,2,13,'2025-07-14 14:40:00','2025-07-15 06:40:00',NULL,72.0,16.0,0,'media','abierta',50267.97,36000.00,3,''),
  (16,16,10,3,2,14,'2024-01-12 08:40:00','2024-01-15 08:40:00',NULL,72.0,72.0,0,'baja','abierta',67193.42,72000.00,NULL,''),
  (17,17,9,1,7,13,'2024-11-07 14:40:00','2024-11-09 14:40:00',NULL,24.0,48.0,1,'baja','en curso',69307.90,36000.00,3,''),
  (18,18,17,3,4,24,'2025-04-02 11:50:00','2025-04-04 11:50:00',NULL,24.0,48.0,1,'media','en curso',18068.64,36000.00,4,''),
  (19,19,18,4,1,25,'2024-12-16 06:55:00','2024-12-19 06:55:00',NULL,48.0,72.0,1,'media','abierta',242968.52,90000.00,NULL,''),
  (20,20,4,2,3,6,'2024-02-25 20:10:00','2024-02-26 04:10:00','2024-02-27 02:10:00',24.0,30.0,1,'baja','cerrada',55201.28,22500.00,NULL,''),
  (21,21,3,3,7,4,'2025-03-23 23:00:00','2025-03-24 07:00:00',NULL,24.0,8.0,0,'baja','en curso',6258.75,36000.00,1,''),
  (22,22,22,4,3,29,'2025-06-23 04:00:00','2025-06-25 04:00:00','2025-06-25 04:00:00',24.0,48.0,1,'media','cerrada',21969.74,48000.00,NULL,''),
  (23,23,7,4,6,11,'2025-08-13 16:15:00','2025-08-14 00:15:00',NULL,72.0,8.0,0,'baja','abierta',456592.02,72000.00,NULL,''),
  (24,24,18,1,2,25,'2024-12-24 19:00:00','2024-12-25 03:00:00','2024-12-25 19:00:00',72.0,24.0,0,'alta','cerrada',41423.04,90000.00,4,''),
  (25,25,3,3,3,5,'2025-09-29 17:05:00','2025-09-30 01:05:00','2025-09-30 17:05:00',24.0,24.0,0,'media','cerrada',42561.45,72000.00,NULL,''),
  (26,26,8,4,3,12,'2025-07-02 03:20:00','2025-07-04 03:20:00','2025-07-02 21:20:00',24.0,18.0,0,'media','cerrada',61367.77,18000.00,5,''),
  (27,27,16,4,5,23,'2025-05-20 02:45:00','2025-05-20 10:45:00','2025-05-20 14:45:00',8.0,12.0,1,'media','cerrada',46053.97,108000.00,NULL,''),
  (28,28,4,3,2,6,'2024-01-23 20:35:00','2024-01-24 04:35:00','2024-01-24 14:35:00',72.0,18.0,0,'media','cerrada',13937.54,45000.00,4,''),
  (29,29,3,2,4,5,'2024-06-29 17:15:00','2024-07-01 17:15:00',NULL,24.0,48.0,1,'alta','abierta',356625.32,60000.00,2,''),
  (30,30,7,2,1,11,'2024-10-23 14:05:00','2024-10-26 14:05:00',NULL,48.0,72.0,1,'media','en curso',271333.32,90000.00,NULL,''),
  (31,31,10,2,2,14,'2025-04-27 15:15:00','2025-04-28 15:15:00','2025-04-28 03:15:00',72.0,12.0,0,'alta','cerrada',15306.77,108000.00,2,''),
  (32,32,11,2,2,15,'2025-09-03 06:35:00','2025-09-06 06:35:00',NULL,72.0,72.0,0,'media','en curso',50578.26,45000.00,3,''),
  (33,33,22,4,1,29,'2024-01-12 04:25:00','2024-01-13 04:25:00',NULL,48.0,24.0,0,'alta','abierta',278799.97,75000.00,5,''),
  (34,34,21,4,6,28,'2024-03-31 23:55:00','2024-04-01 15:55:00','2024-04-01 17:55:00',72.0,18.0,0,'baja','cerrada',30523.56,18000.00,NULL,'');
SET FOREIGN_KEY_CHECKS=1;


USE shl_v2;





CREATE VIEW vw_materiales_por_tipo_servicio AS
SELECT
    ts.id_tipo_servicio,
    ts.nombre               AS tipo_servicio,
    m.id_material,
    m.nombre                AS material,
    m.unidad_medida,
    SUM(do.cantidad)        AS total_cantidad,
    SUM(do.cantidad * do.precio_unitario) AS total_costo,
    COUNT(DISTINCT os.id_orden) AS ordenes_con_material
FROM detalle_orden do
JOIN orden_servicio os   ON os.id_orden = do.id_orden
JOIN tipo_servicio ts    ON ts.id_tipo_servicio = os.id_tipo_servicio
JOIN material m          ON m.id_material = do.id_material
GROUP BY ts.id_tipo_servicio, m.id_material;


CREATE VIEW vw_costos_por_orden AS
SELECT
    os.id_orden,
    os.fecha_creacion,
    os.fecha_entrega_aprox,
    os.estado,
    os.prioridad,
    c.id_cliente,
    CONCAT(c.nombre,' ',c.apellido_razon_social) AS cliente,
    t.id_tecnico,
    CONCAT(t.nombre,' ',t.apellido) AS tecnico,
    ts.id_tipo_servicio,
    ts.nombre AS tipo_servicio,
    COALESCE(SUM(CASE WHEN do.id_material IS NULL  THEN do.horas * do.precio_hora END),0) AS costo_mano_obra,
    COALESCE(SUM(CASE WHEN do.id_material IS NOT NULL THEN do.cantidad * do.precio_unitario END),0) AS costo_materiales,
    COALESCE(SUM(CASE WHEN do.id_material IS NULL  THEN do.horas * do.precio_hora
                      ELSE do.cantidad * do.precio_unitario END),0) AS costo_total
FROM orden_servicio os
LEFT JOIN detalle_orden do ON do.id_orden = os.id_orden
JOIN cliente c ON c.id_cliente = os.id_cliente
JOIN tecnico t ON t.id_tecnico = os.id_tecnico
JOIN tipo_servicio ts ON ts.id_tipo_servicio = os.id_tipo_servicio
GROUP BY os.id_orden;


CREATE VIEW vw_sla_detalle AS
SELECT
    f.id_orden,
    f.id_tecnico,
    f.id_tipo_servicio,
    f.fecha_creacion,
    f.fecha_compromiso,
    f.fecha_cierre,
    f.horas_sla,
    f.horas_reales,
    (f.horas_reales - f.horas_sla) AS horas_sobre_sla,
    CASE WHEN f.horas_reales <= f.horas_sla THEN 1 ELSE 0 END AS cumplio_sla,
    f.estado_final,
    f.prioridad_snap
FROM fact_servicio f;


CREATE VIEW vw_sla_por_tecnico AS
SELECT
    t.id_tecnico,
    CONCAT(t.nombre,' ',t.apellido) AS tecnico,
    COUNT(*) AS total_ordenes,
    SUM(CASE WHEN f.estado_final='cerrada' THEN 1 ELSE 0 END) AS cerradas,
    SUM(CASE WHEN f.estado_final='cerrada' AND f.incumplio_sla=1 THEN 1 ELSE 0 END) AS incumplidas,
    ROUND(100 * SUM(CASE WHEN f.estado_final='cerrada' AND f.incumplio_sla=0 THEN 1 ELSE 0 END)
          / NULLIF(SUM(CASE WHEN f.estado_final='cerrada' THEN 1 ELSE 0 END),0),2) AS pct_cumplimiento,
    ROUND(AVG(CASE WHEN f.estado_final='cerrada' THEN f.horas_reales END),2) AS horas_reales_prom
FROM fact_servicio f
JOIN tecnico t ON t.id_tecnico = f.id_tecnico
GROUP BY t.id_tecnico;


CREATE VIEW vw_stock_actual AS
SELECT
    m.id_material,
    m.nombre,
    m.unidad_medida,
    m.stock_minimo,
    COALESCE(SUM(CASE WHEN sm.tipo_mov='ingreso' THEN sm.cantidad END),0) AS ingresos,
    COALESCE(SUM(CASE WHEN sm.tipo_mov='egreso'  THEN sm.cantidad END),0) AS egresos,
    COALESCE(SUM(CASE WHEN sm.tipo_mov='ingreso' THEN sm.cantidad
                      WHEN sm.tipo_mov='egreso'  THEN -sm.cantidad END),0) AS stock_actual,
    CASE WHEN COALESCE(SUM(CASE WHEN sm.tipo_mov='ingreso' THEN sm.cantidad
                                WHEN sm.tipo_mov='egreso'  THEN -sm.cantidad END),0) < m.stock_minimo
         THEN 1 ELSE 0 END AS bajo_minimo
FROM material m
LEFT JOIN stock_movimiento sm ON sm.id_material = m.id_material
GROUP BY m.id_material;


CREATE VIEW vw_top_materiales_tipo AS
SELECT
    x.*,
    ROW_NUMBER() OVER (PARTITION BY x.id_tipo_servicio ORDER BY x.total_costo DESC) AS rn
FROM (
    SELECT
        ts.id_tipo_servicio,
        ts.nombre AS tipo_servicio,
        m.id_material,
        m.nombre AS material,
        SUM(do.cantidad) AS total_cantidad,
        SUM(do.cantidad * do.precio_unitario) AS total_costo
    FROM detalle_orden do
    JOIN orden_servicio os ON os.id_orden = do.id_orden
    JOIN tipo_servicio ts ON ts.id_tipo_servicio = os.id_tipo_servicio
    JOIN material m       ON m.id_material   = do.id_material
    GROUP BY ts.id_tipo_servicio, m.id_material
) x;


CREATE VIEW vw_backlog AS
SELECT
    os.id_orden,
    os.estado,
    os.prioridad,
    os.fecha_creacion,
    os.fecha_entrega_aprox,
    TIMESTAMPDIFF(HOUR, os.fecha_creacion, NOW()) AS horas_abierta,
    CASE WHEN NOW() > os.fecha_entrega_aprox THEN 1 ELSE 0 END AS vencida,
    CONCAT(c.nombre,' ',c.apellido_razon_social) AS cliente,
    CONCAT(t.nombre,' ',t.apellido) AS tecnico,
    (SELECT COUNT(*) FROM bitacora_estado b WHERE b.id_orden = os.id_orden) AS eventos_bitacora
FROM orden_servicio os
JOIN cliente c ON c.id_cliente = os.id_cliente
JOIN tecnico t ON t.id_tecnico = os.id_tecnico
WHERE os.estado <> 'cerrada';


DELIMITER $$


CREATE FUNCTION fn_stock_actual(p_id_material INT)
RETURNS DECIMAL(18,2)
READS SQL DATA
BEGIN
    DECLARE v_stock DECIMAL(18,2);
    SELECT COALESCE(SUM(CASE WHEN tipo_mov='ingreso' THEN cantidad
                             WHEN tipo_mov='egreso'  THEN -cantidad END),0)
      INTO v_stock
      FROM stock_movimiento
     WHERE id_material = p_id_material;
    RETURN v_stock;
END $$


CREATE FUNCTION fn_costo_total_orden(p_id_orden INT)
RETURNS DECIMAL(18,2)
READS SQL DATA
BEGIN
    DECLARE v_total DECIMAL(18,2);
    SELECT COALESCE(SUM(CASE WHEN id_material IS NULL THEN horas*precio_hora
                             ELSE cantidad*precio_unitario END),0)
      INTO v_total
      FROM detalle_orden
     WHERE id_orden = p_id_orden;
    RETURN v_total;
END $$


CREATE FUNCTION fn_sla_gap_horas(p_id_orden INT)
RETURNS DECIMAL(10,2)
READS SQL DATA
BEGIN
    DECLARE v_gap DECIMAL(10,2);
    SELECT COALESCE(horas_reales - horas_sla, 0)
      INTO v_gap
      FROM fact_servicio
     WHERE id_orden = p_id_orden
     LIMIT 1;
    RETURN v_gap;
END $$

DELIMITER ;


DELIMITER $$


CREATE TRIGGER trg_compra_detalle_bi_enforce_unique
BEFORE INSERT ON compra_detalle
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM compra_detalle cd
               WHERE cd.id_compra = NEW.id_compra
                 AND cd.id_material = NEW.id_material) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Ya existe el material en esta compra (use ON DUPLICATE KEY UPDATE para sumar cantidad).';
    END IF;
END $$


CREATE TRIGGER trg_compra_detalle_ai_stock_ingreso
AFTER INSERT ON compra_detalle
FOR EACH ROW
BEGIN
    INSERT INTO stock_movimiento (id_material, fecha_mov, tipo_mov, cantidad, comentario, id_orden, id_compra)
    SELECT NEW.id_material, c.fecha_compra, 'ingreso', NEW.cantidad,
           CONCAT('Ingreso compra ', NEW.id_compra), NULL, NEW.id_compra
      FROM compra c
     WHERE c.id_compra = NEW.id_compra;
END $$


CREATE TRIGGER trg_detalle_orden_ai_stock_egreso
AFTER INSERT ON detalle_orden
FOR EACH ROW
BEGIN
    IF NEW.id_material IS NOT NULL AND NEW.cantidad IS NOT NULL AND NEW.cantidad > 0 THEN
        INSERT INTO stock_movimiento (id_material, fecha_mov, tipo_mov, cantidad, comentario, id_orden, id_compra)
        SELECT NEW.id_material, DATE_ADD(os.fecha_creacion, INTERVAL 2 HOUR), 'egreso', NEW.cantidad,
               CONCAT('Consumo OS #', NEW.id_orden), NEW.id_orden, NULL
          FROM orden_servicio os
         WHERE os.id_orden = NEW.id_orden;
    END IF;
END $$

DELIMITER ;


DELIMITER $$


CREATE PROCEDURE sp_reporte_materiales(
    IN p_desde DATETIME,
    IN p_hasta DATETIME,
    IN p_id_tipo_servicio INT,
    IN p_id_material INT
)
BEGIN
    SELECT
        ts.id_tipo_servicio,
        ts.nombre AS tipo_servicio,
        m.id_material,
        m.nombre  AS material,
        m.unidad_medida,
        SUM(do.cantidad) AS total_cantidad,
        SUM(do.cantidad * do.precio_unitario) AS total_costo,
        COUNT(DISTINCT os.id_orden) AS ordenes
    FROM detalle_orden do
    JOIN orden_servicio os ON os.id_orden = do.id_orden
    JOIN tipo_servicio ts ON ts.id_tipo_servicio = os.id_tipo_servicio
    JOIN material m       ON m.id_material   = do.id_material
    WHERE os.fecha_creacion >= COALESCE(p_desde, '1900-01-01')
      AND os.fecha_creacion <  COALESCE(p_hasta,  '2999-12-31')
      AND (p_id_tipo_servicio IS NULL OR ts.id_tipo_servicio = p_id_tipo_servicio)
      AND (p_id_material IS NULL OR m.id_material = p_id_material)
    GROUP BY ts.id_tipo_servicio, m.id_material
    ORDER BY ts.id_tipo_servicio, total_costo DESC;
END $$


CREATE PROCEDURE sp_kpi_sla(
    IN p_desde DATETIME,
    IN p_hasta DATETIME
)
BEGIN
   
    SELECT
        ts.id_tipo_servicio,
        ts.nombre AS tipo_servicio,
        COUNT(*) AS total,
        SUM(CASE WHEN f.estado_final='cerrada' THEN 1 ELSE 0 END) AS cerradas,
        SUM(CASE WHEN f.estado_final='cerrada' AND f.incumplio_sla=0 THEN 1 ELSE 0 END) AS cumplidas_sla,
        ROUND(100*SUM(CASE WHEN f.estado_final='cerrada' AND f.incumplio_sla=0 THEN 1 ELSE 0 END)
              / NULLIF(SUM(CASE WHEN f.estado_final='cerrada' THEN 1 ELSE 0 END),0),2) AS pct_cumplimiento,
        ROUND(AVG(CASE WHEN f.estado_final='cerrada' THEN f.horas_reales END),2) AS horas_reales_prom
    FROM fact_servicio f
    JOIN tipo_servicio ts ON ts.id_tipo_servicio = f.id_tipo_servicio
    WHERE f.fecha_creacion >= COALESCE(p_desde, '1900-01-01')
      AND f.fecha_creacion <  COALESCE(p_hasta,  '2999-12-31')
    GROUP BY ts.id_tipo_servicio
    ORDER BY pct_cumplimiento DESC;

 
    SELECT
        t.id_tecnico,
        CONCAT(t.nombre,' ',t.apellido) AS tecnico,
        COUNT(*) AS total,
        SUM(CASE WHEN f.estado_final='cerrada' THEN 1 ELSE 0 END) AS cerradas,
        SUM(CASE WHEN f.estado_final='cerrada' AND f.incumplio_sla=0 THEN 1 ELSE 0 END) AS cumplidas_sla,
        ROUND(100*SUM(CASE WHEN f.estado_final='cerrada' AND f.incumplio_sla=0 THEN 1 ELSE 0 END)
              / NULLIF(SUM(CASE WHEN f.estado_final='cerrada' THEN 1 ELSE 0 END),0),2) AS pct_cumplimiento,
        ROUND(AVG(CASE WHEN f.estado_final='cerrada' THEN f.horas_reales END),2) AS horas_reales_prom
    FROM fact_servicio f
    JOIN tecnico t ON t.id_tecnico = f.id_tecnico
    WHERE f.fecha_creacion >= COALESCE(p_desde, '1900-01-01')
      AND f.fecha_creacion <  COALESCE(p_hasta,  '2999-12-31')
    GROUP BY t.id_tecnico
    ORDER BY pct_cumplimiento DESC;
END $$


CREATE PROCEDURE sp_stock_valorizado()
BEGIN
    SELECT
        m.id_material,
        m.nombre,
        m.unidad_medida,
        m.precio_lista,
        s.stock_actual,
        ROUND(m.precio_lista * s.stock_actual, 2) AS valor_stock
    FROM material m
    JOIN vw_stock_actual s ON s.id_material = m.id_material
    ORDER BY valor_stock DESC;
END $$

DELIMITER ;



