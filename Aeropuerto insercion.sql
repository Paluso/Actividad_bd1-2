-- ingreso de los paises:
INSERT INTO pais (idPais, nombre)
	VALUES (1, 'Estados Unidos');
INSERT INTO pais (idPais, nombre)
	VALUES (2, 'Alemania');
-- ingreso de las marcas:
INSERT INTO marca (idMarca, nombre, pais_idPais)
	VALUES (1,'Cessna',1);
INSERT INTO marca (idMarca, nombre, pais_idPais)
	VALUES (2,'Beechcraft',1);
INSERT INTO marca (idMarca, nombre, pais_idPais)
	VALUES (3,'Fokker',2);
-- ingreso de modelos:
INSERT INTO modelo (idModelo, nombre, marca_idMarca)
	VALUES (1,'Citation',1);
INSERT INTO modelo (idModelo, nombre, marca_idMarca)
	VALUES (2,'Baron',2); 
INSERT INTO modelo (idModelo, nombre, marca_idMarca)
	VALUES (3,'F-27',3);
INSERT INTO modelo (idModelo, nombre, marca_idMarca)
	VALUES (4,'Citation',1);
INSERT INTO modelo (idModelo, nombre, marca_idMarca)
	VALUES (5,'King Air',2);
-- ingreso de los aviones:
INSERT INTO avion (	matricula, fecha_entrada_servicio, modelo_idModelo)
	VALUES ('LV-ABC','2010-12-12',1);
INSERT INTO avion (	matricula, fecha_entrada_servicio, modelo_idModelo)
	VALUES ('LV-CDE','2011-10-01',2);
INSERT INTO avion (	matricula, fecha_entrada_servicio, modelo_idModelo)
	VALUES ('LV-FGH','2008-05-04',3);
INSERT INTO avion (	matricula, fecha_entrada_servicio, modelo_idModelo)
	VALUES ('LV-IJK','2014-06-07',4);
INSERT INTO avion (	matricula, fecha_entrada_servicio, modelo_idModelo)
	VALUES ('LV-LMN','2012-07-08',5);
-- ingreso de las provincias:
INSERT INTO provincia (idProvincia, nombre)
	VALUES (1, 'Buenos Aires');
INSERT INTO provincia (idProvincia, nombre)
	VALUES (2, 'CABA');
-- ingreso de las localidades:
INSERT INTO localidad (idLocalidad, nombre)
	VALUES (1, 'Lanús');
INSERT INTO localidad (idLocalidad, nombre)
	VALUES (2, 'CABA');
INSERT INTO localidad (idLocalidad, nombre)
	VALUES (3, 'Avellaneda');
INSERT INTO localidad (idLocalidad, nombre)
	VALUES (4, 'Lomas de Zamora');
-- ingreso de las calles:
INSERT INTO calle (idCalle, nombre)
	VALUES (1,'Ituzaingo');
INSERT INTO calle (idCalle, nombre)
	VALUES (2,'Roca');
INSERT INTO calle (idCalle, nombre)
	VALUES (3,'Campichuelo');
INSERT INTO calle (idCalle, nombre)
	VALUES (4,'Meeks');
INSERT INTO calle (idCalle, nombre)
	VALUES (5,'Amenabar');
INSERT INTO calle (idCalle, nombre)
	VALUES (6,'Capello');
INSERT INTO calle (idCalle, nombre)
	VALUES (7,'Azara');
INSERT INTO calle (idCalle, nombre)
	VALUES (8,'Sarmiento');
INSERT INTO calle (idCalle, nombre)
	VALUES (9,'Rivadavia');
INSERT INTO calle (idCalle, nombre)
	VALUES (10,'Martinto');
INSERT INTO calle (idCalle, nombre)
	VALUES (11,'Bolaños');
INSERT INTO calle (idCalle, nombre)
	VALUES (12,'Loria');
INSERT INTO calle (idCalle, nombre)
	VALUES (13,'San Martin');
INSERT INTO calle (idCalle, nombre)
	VALUES (14,'Mamberti');
-- ingreso de los pasajeros:
INSERT INTO pasajero (dni, viajero_frecuente, nombre, apellido, 
					numero_calle, provincia_idProvincia, localidad_idLocalidad, calle_idCalle)
	VALUES (11111111, 1, 'Alejo', 'Barragan', 123, 1, 1, 1);
INSERT INTO pasajero (dni, viajero_frecuente, nombre, apellido, 
					numero_calle, provincia_idProvincia, localidad_idLocalidad, calle_idCalle)
	VALUES (22222222, 1, 'Andrés Alfredo', 'Casas', 4561, 2, 2, 2);
INSERT INTO pasajero (dni, viajero_frecuente, nombre, apellido, 
					numero_calle, provincia_idProvincia, localidad_idLocalidad, calle_idCalle)
	VALUES (33333333, 0, 'Barbara', 'Chaves', 6532, 1, 3, 3);
INSERT INTO pasajero (dni, viajero_frecuente, nombre, apellido, 
					numero_calle, provincia_idProvincia, localidad_idLocalidad, calle_idCalle)
	VALUES (44444444, 1, 'Brisa', 'Chimbo', 562, 1, 4, 4);
INSERT INTO pasajero (dni, viajero_frecuente, nombre, apellido, 
					numero_calle, provincia_idProvincia, localidad_idLocalidad, calle_idCalle)
	VALUES (55555555, 0, 'Camila', 'Chudoba', 2356, 1, 1, 14);
INSERT INTO pasajero (dni, viajero_frecuente, nombre, apellido, 
					numero_calle, provincia_idProvincia, localidad_idLocalidad, calle_idCalle)
	VALUES (66666666, 1, 'Carlos', 'Cires', 2345, 2, 2, 5);
INSERT INTO pasajero (dni, viajero_frecuente, nombre, apellido, 
					numero_calle, provincia_idProvincia, localidad_idLocalidad, calle_idCalle)
	VALUES (77777777, 0, 'Carlos Sebastián', 'Cusato', 1589, 1, 4, 6);
INSERT INTO pasajero (dni, viajero_frecuente, nombre, apellido, 
					numero_calle, provincia_idProvincia, localidad_idLocalidad, calle_idCalle)
	VALUES (88888888, 1, 'Christian', 'Domínguez', 356, 2, 2, 5);
INSERT INTO pasajero (dni, viajero_frecuente, nombre, apellido, 
					numero_calle, provincia_idProvincia, localidad_idLocalidad, calle_idCalle)
	VALUES (99999999, 1, 'Cristian', 'Escullini', 1296, 1, 4, 4);
INSERT INTO pasajero (dni, viajero_frecuente, nombre, apellido, 
					numero_calle, provincia_idProvincia, localidad_idLocalidad, calle_idCalle)
	VALUES (10111213, 1, 'Cristian', 'Feijoo', 3652, 1, 3, 13);
-- ingreso de los pilotos: 
INSERT INTO piloto (cuil, dni, nombre, apellido, fecha_ingreso, numero_calle, 
				provincia_idProvincia, localidad_idLocalidad, calle_idCalle)
	VALUES ('20-12345678-8', 12345678, 'Federico Bernardo', 'Juarez', '1994-10-01', 2235, 2, 2, 13);
INSERT INTO piloto (cuil, dni, nombre, apellido, fecha_ingreso, numero_calle, 
				provincia_idProvincia, localidad_idLocalidad, calle_idCalle)
	VALUES ('20-34567890-1', 34567890, 'Franco', 'Lacoste', '2003-07-01', 1254, 1, 3, 7);
INSERT INTO piloto (cuil, dni, nombre, apellido, fecha_ingreso, numero_calle, 
				provincia_idProvincia, localidad_idLocalidad, calle_idCalle)
	VALUES ('27-45678901-1', 45678901, 'Mariana', 'Laime', '2001-04-01', 500, 1, 1, 8);
INSERT INTO piloto (cuil, dni, nombre, apellido, fecha_ingreso, numero_calle, 
				provincia_idProvincia, localidad_idLocalidad, calle_idCalle)
	VALUES ('20-56789123-3', 56789123, 'Germán Ignacio', 'López', '2013-05-01', 2351, 2, 2, 9);
INSERT INTO piloto (cuil, dni, nombre, apellido, fecha_ingreso, numero_calle, 
				provincia_idProvincia, localidad_idLocalidad, calle_idCalle)
	VALUES ('20-67891234-4', 67891234, 'Giuliano', 'Martínez', '2010-07-01', 663, 1, 1, 10);
INSERT INTO piloto (cuil, dni, nombre, apellido, fecha_ingreso, numero_calle, 
				provincia_idProvincia, localidad_idLocalidad, calle_idCalle)
	VALUES ('27-78912345-5', 78912345, 'Adriana', 'Medina', '2015-08-01', 1256, 1, 1, 11);
INSERT INTO piloto (cuil, dni, nombre, apellido, fecha_ingreso, numero_calle, 
				provincia_idProvincia, localidad_idLocalidad, calle_idCalle)
	VALUES ('20-90123456-6', 90123456, 'Jair Alberto', 'Melgarejo', '2011-03-01', 333, 1, 3, 12);
-- ingreso de la ciudad de los aeropuertos:
INSERT INTO ciudad (idCiudad, nombre)
	VALUES (1, 'CABA');
INSERT INTO ciudad (idCiudad, nombre)
	VALUES (2, 'Mar del Plata');
INSERT INTO ciudad (idCiudad, nombre)
	VALUES (3, 'San Carlos de Bariloche');
-- ingreso aeropuertos de origen:
INSERT INTO aeropuerto_origen (iata_origen, nombre, ciudad_idCiudad)
	VALUES ('BUE','Aeroparque Jorge Newbery', 1);
INSERT INTO aeropuerto_origen (iata_origen, nombre, ciudad_idCiudad)
	VALUES ('MDQ','Astor Piazolla', 2);
INSERT INTO aeropuerto_origen (iata_origen, nombre, ciudad_idCiudad)
	VALUES ('BRC','Teniente Luis Candelaria', 3);
-- ingreso aeropuertos de destino
INSERT INTO aeropuerto_destino (iata_destino, nombre, ciudad_idCiudad)
	VALUES ('BUE','Aeroparque Jorge Newbery', 1);
INSERT INTO aeropuerto_destino (iata_destino, nombre, ciudad_idCiudad)
	VALUES ('MDQ','Astor Piazolla', 2);
INSERT INTO aeropuerto_destino (iata_destino, nombre, ciudad_idCiudad)
	VALUES ('BRC','Teniente Luis Candelaria', 3);
-- ingreso de los vuelos:
INSERT INTO vuelo (codigo, avion_matricula, aeropuerto_origen_iata, aeropuerto_destino_iata,
				fecha_partida, fecha_llegada,  piloto_cuil)
	VALUES ('TT1234', 'LV-ABC', 'BUE', 'BRC', '2018-05-01 20:00:00', '2018-05-01 23:45:00', '20-12345678-8');
INSERT INTO vuelo (codigo, avion_matricula, aeropuerto_origen_iata, aeropuerto_destino_iata,
				fecha_partida, fecha_llegada,  piloto_cuil)
	VALUES ('TT3456', 'LV-CDE', 'BUE', 'MDQ', '2018-05-02 10:00:00', '2018-05-02 12:00:00', '27-78912345-5');
INSERT INTO vuelo (codigo, avion_matricula, aeropuerto_origen_iata, aeropuerto_destino_iata,
				fecha_partida, fecha_llegada,  piloto_cuil)
	VALUES ('TT1235', 'LV-ABC', 'BRC', 'BUE', '2018-05-02 07:00:00', '2018-05-02 10:50:00', '20-12345678-8');
INSERT INTO vuelo (codigo, avion_matricula, aeropuerto_origen_iata, aeropuerto_destino_iata,
				fecha_partida, fecha_llegada,  piloto_cuil)
	VALUES ('TT1256', 'LV-FGH', 'BUE', 'MDQ', '2018-05-02 08:00:00', '2018-05-02 10:05:00', '27-45678901-1');
INSERT INTO vuelo (codigo, avion_matricula, aeropuerto_origen_iata, aeropuerto_destino_iata,
				fecha_partida, fecha_llegada,  piloto_cuil)
	VALUES ('TT5632', 'LV-IJK', 'MDQ', 'BUE', '2018-05-03 07:00:00', '2018-05-03 09:15:00', '20-56789123-3');
INSERT INTO vuelo (codigo, avion_matricula, aeropuerto_origen_iata, aeropuerto_destino_iata,
				fecha_partida, fecha_llegada,  piloto_cuil)
	VALUES ('TT3333', 'LV-LMN', 'BUE', 'BRC', '2018-05-03 07:00:00', '2018-05-03 10:50:00', '20-12345678-8');
INSERT INTO vuelo (codigo, avion_matricula, aeropuerto_origen_iata, aeropuerto_destino_iata,
				fecha_partida, fecha_llegada,  piloto_cuil)
	VALUES ('TT1257', 'LV-FGH', 'BUE', 'MDQ', '2018-05-04 08:00:00', '2018-05-04 10:05:00', '27-45678901-1');
INSERT INTO vuelo (codigo, avion_matricula, aeropuerto_origen_iata, aeropuerto_destino_iata,
				fecha_partida, fecha_llegada,  piloto_cuil)
	VALUES ('TT3457', 'LV-CDE', 'MDQ', 'BUE', '2018-05-04 10:00:00', '2018-05-04 12:00:00', '27-78912345-5');
INSERT INTO vuelo (codigo, avion_matricula, aeropuerto_origen_iata, aeropuerto_destino_iata,
				fecha_partida, fecha_llegada,  piloto_cuil)
	VALUES ('TT5633', 'LV-IJK', 'BUE', 'MDQ', '2018-05-05 07:00:00', '2018-05-05 09:15:00', '20-56789123-3');
-- ingreso de los pasajeros en cada vuelo:
INSERT INTO pasajero_toma_vuelo (vuelo_codigo, pasajero_dni)
	VALUES('TT1234', 44444444);
INSERT INTO pasajero_toma_vuelo (vuelo_codigo, pasajero_dni)
	VALUES('TT1234', 55555555);
INSERT INTO pasajero_toma_vuelo (vuelo_codigo, pasajero_dni)
	VALUES('TT1234', 66666666);
INSERT INTO pasajero_toma_vuelo (vuelo_codigo, pasajero_dni)
	VALUES('TT3456', 77777777);
INSERT INTO pasajero_toma_vuelo (vuelo_codigo, pasajero_dni)
	VALUES('TT3456', 88888888);
INSERT INTO pasajero_toma_vuelo (vuelo_codigo, pasajero_dni)
	VALUES('TT3456', 99999999);
INSERT INTO pasajero_toma_vuelo (vuelo_codigo, pasajero_dni)
	VALUES('TT1235', 44444444);
INSERT INTO pasajero_toma_vuelo (vuelo_codigo, pasajero_dni)
	VALUES('TT1235', 55555555);
INSERT INTO pasajero_toma_vuelo (vuelo_codigo, pasajero_dni)
	VALUES('TT1256', 11111111);
INSERT INTO pasajero_toma_vuelo (vuelo_codigo, pasajero_dni)
	VALUES('TT1256', 22222222);
INSERT INTO pasajero_toma_vuelo (vuelo_codigo, pasajero_dni)
	VALUES('TT1256', 33333333);
INSERT INTO pasajero_toma_vuelo (vuelo_codigo, pasajero_dni)
	VALUES('TT5632', 77777777);
INSERT INTO pasajero_toma_vuelo (vuelo_codigo, pasajero_dni)
	VALUES('TT5632', 88888888);
INSERT INTO pasajero_toma_vuelo (vuelo_codigo, pasajero_dni)
	VALUES('TT5632', 99999999);
INSERT INTO pasajero_toma_vuelo (vuelo_codigo, pasajero_dni)
	VALUES('TT3333', 77777777);
INSERT INTO pasajero_toma_vuelo (vuelo_codigo, pasajero_dni)
	VALUES('TT3333', 88888888);
INSERT INTO pasajero_toma_vuelo (vuelo_codigo, pasajero_dni)
	VALUES('TT3333', 99999999);
INSERT INTO pasajero_toma_vuelo (vuelo_codigo, pasajero_dni)
	VALUES('TT1257', 22222222);
INSERT INTO pasajero_toma_vuelo (vuelo_codigo, pasajero_dni)
	VALUES('TT3457', 77777777);
INSERT INTO pasajero_toma_vuelo (vuelo_codigo, pasajero_dni)
	VALUES('TT3457', 88888888);
INSERT INTO pasajero_toma_vuelo (vuelo_codigo, pasajero_dni)
	VALUES('TT3457', 99999999);
INSERT INTO pasajero_toma_vuelo (vuelo_codigo, pasajero_dni)
	VALUES('TT5633', 77777777);
INSERT INTO pasajero_toma_vuelo (vuelo_codigo, pasajero_dni)
	VALUES('TT5633', 88888888);
INSERT INTO pasajero_toma_vuelo (vuelo_codigo, pasajero_dni)
	VALUES('TT5633', 99999999);

select * from aeropuerto_destino;
select * from aeropuerto_origen;
select * from avion;
select * from calle;
select * from ciudad;
select * from localidad;
select * from provincia;
select * from marca;
select * from modelo;
select * from pais;
select * from pasajero;
select * from piloto;
select * from vuelo;
select * from pasajero_toma_vuelo;
