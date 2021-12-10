-- a. Listado de pasajeros de la empresa (apellido, nombre, dni):
SELECT apellido, nombre, dni FROM pasajero;

-- b. Listado de pasajeros de la empresa (apellido, nombre, dni, domicilio) .*
SELECT pas.apellido, pas.nombre, pas.dni, 
CONCAT(c.nombre,' ',pas.numero_calle) AS calle, l.nombre AS localidad, p.nombre AS provincia
FROM pasajero pas 
INNER JOIN calle c ON pas.calle_idCalle=c.idCalle
INNER JOIN localidad l ON pas.localidad_idLocalidad=l.idLocalidad
INNER JOIN provincia p ON pas.provincia_idProvincia=p.idProvincia;

/* c. Listado de pasajeros de la empresa (apellido, nombre, dni, domicilio)
mostrando sólo a los que participan del programa de viajeros frecuentes,
ordenados por apellido y nombre. */
SELECT pas.apellido, pas.nombre, pas.dni,
CONCAT(c.nombre,' ',pas.numero_calle) as calle, l.nombre as localidad, p.nombre as provincia
FROM pasajero pas
INNER JOIN calle c on pas.calle_idCalle=c.idCalle
INNER JOIN localidad l ON pas.localidad_idLocalidad=l.idLocalidad
INNER JOIN provincia p ON pas.provincia_idProvincia=p.idProvincia
WHERE viajero_frecuente=1 ORDER BY pas.apellido, pas.nombre;

/* d. Listado de los aviones de la compañía, (marca, modelo, matrícula, fecha de
entrada en servicio, país de origen). */
SELECT mar.nombre AS marca, mo.nombre AS modelo, a.matricula, 
a.fecha_entrada_servicio AS 'fecha de entrada en servicio', p.nombre AS 'pais de origen'
FROM avion a 
INNER JOIN modelo mo ON a.modelo_idModelo=mo.idModelo
INNER JOIN marca mar ON mo.marca_idMarca=mar.idMarca
INNER JOIN pais p ON mar.pais_idPais=p.idPais;

/* e. Listado de los aviones de la compañía, (marca, modelo, matrícula, fecha de
entrada en servicio, país de origen) cuyo país de origen sea “Alemania”. */
SELECT mar.nombre as marca, mo.nombre as modelo, a.matricula, 
a.fecha_entrada_servicio AS 'fecha de entrada en servicio', p.nombre AS 'pais de origen'
FROM avion a 
INNER JOIN modelo mo ON a.modelo_idModelo=mo.idModelo
INNER JOIN marca mar ON mo.marca_idMarca=mar.idMarca
INNER JOIN pais p ON mar.pais_idPais=p.idPais 
WHERE p.nombre='Alemania';

/* f. Listado de vuelos realizados mostrando código, marca, modelo y matrícula
del avión, Código IATA del Aeropuerto origen, Código IATA del Aeropuerto
destino, fecha hora partida, fecha hora llegada y CUIL piloto. */
SELECT v.codigo, mar.nombre AS marca, mo.nombre AS modelo, v.avion_matricula AS matricula,
ao.iata_origen AS 'IATA origen', ad.iata_destino AS 'IATA destino', 
fecha_partida AS 'fecha partida', fecha_llegada AS 'fecha llegada', p.cuil
FROM vuelo v 
INNER JOIN avion a ON v.avion_matricula=a.matricula
INNER JOIN modelo mo ON a.modelo_idModelo=mo.idModelo
INNER JOIN marca mar ON mo.marca_idMarca=mar.idMarca
INNER JOIN aeropuerto_origen ao ON v.aeropuerto_origen_iata=ao.iata_origen
INNER JOIN aeropuerto_destino ad ON v.aeropuerto_destino_iata=ad.iata_destino
INNER JOIN piloto p ON v.piloto_cuil=p.cuil;

/* g. Listado de vuelos realizados mostrando código, marca, modelo y matrícula
del avión, Código IATA del Aeropuerto origen, Código IATA del Aeropuerto
destino, fecha hora partida, fecha hora llegada y CUIL piloto que hayan
partido del aeropuerto “BUE” ordenados por fecha hora de partida. */
SELECT v.codigo, mar.nombre AS marca, mo.nombre AS modelo, v.avion_matricula AS matricula,
ao.iata_origen AS 'IATA origen', ad.iata_destino AS 'IATA destino', 
v.fecha_partida AS 'fecha de partida', v.fecha_llegada AS 'fecha de llegada', p.cuil
FROM vuelo v INNER JOIN avion a ON v.avion_matricula=a.matricula
INNER JOIN modelo mo ON a.modelo_idModelo=mo.idModelo
INNER JOIN marca mar ON mo.marca_idMarca=mar.idMarca
INNER JOIN aeropuerto_origen ao ON ao.iata_origen=v.aeropuerto_origen_iata
INNER JOIN aeropuerto_destino ad ON ad.iata_destino=v.aeropuerto_destino_iata
INNER JOIN piloto p ON v.piloto_cuil=p.cuil
WHERE ao.iata_origen='BUE' ORDER BY v.fecha_partida;

/* h. Listado de vuelos realizados mostrando codigo, Código IATA del Aeropuerto
origen, Código IATA del Aeropuerto destino, fecha hora partida y fecha hora
llegada que hayan partido del aeropuerto “BUE” y hayan arribado al
aeropuerto “MDQ” */ 
SELECT v.codigo, ao.iata_origen AS 'IATA origen', ad.iata_destino AS 'IATA destino',
v.fecha_partida AS 'fecha de partida', v.fecha_llegada AS 'fecha de llegada'
FROM vuelo v 
INNER JOIN aeropuerto_origen ao ON v.aeropuerto_origen_iata=ao.iata_origen
INNER JOIN aeropuerto_destino ad ON v.aeropuerto_destino_iata=ad.iata_destino
WHERE ao.iata_origen='BUE' AND ad.iata_destino='MDQ';

/* i. Listado de todos los vuelos realizados y sus pasajeros, (código, apellido,
nombre, dni) */
SELECT ptv.vuelo_codigo, p.apellido, p.nombre, p.dni
FROM pasajero_toma_vuelo ptv 
INNER JOIN pasajero p ON ptv.pasajero_dni=p.dni;

/* j. Cantidad de vuelos realizados que hayan partido del aeropuerto “BUE” y
hayan arribado al aeropuerto “BRC” */
SELECT COUNT(*) AS 'Vuelos de BUE a BRC'
FROM vuelo v 
INNER JOIN aeropuerto_origen ao ON v.aeropuerto_origen_iata=ao.iata_origen
INNER JOIN aeropuerto_destino ad ON v.aeropuerto_destino_iata=ad.iata_destino
WHERE ao.iata_origen='BUE' AND ad.iata_destino='BRC';

-- k. Cantidad de vuelos realizados que hayan partido del aeropuerto “MDQ”
SELECT COUNT(*) AS 'Vuelos partidos de MDQ'
FROM vuelo v 
INNER JOIN aeropuerto_origen ao ON v.aeropuerto_origen_iata=ao.iata_origen
WHERE ao.iata_origen='MDQ';

/* l. Cantidad de vuelos realizados, por aeropuerto de origen (Código IATA,
cantidad) */
SELECT ao.iata_origen AS 'Aeropuerto de Origen', COUNT(*) AS 'Total de vuelos'
FROM vuelo v 
INNER JOIN aeropuerto_origen ao ON v.aeropuerto_origen_iata=ao.iata_origen
GROUP BY ao.iata_origen;

/* m. Cantidad de pasajeros transportados, por localidad del pasajero (localidad,
cantidad) */
SELECT l.nombre AS localidad, COUNT(*) 'Total de pasajeros por localidad'
FROM pasajero_toma_vuelo ptv 
INNER JOIN pasajero p ON ptv.pasajero_dni=p.dni
INNER JOIN localidad l ON p.localidad_idLocalidad=l.idLocalidad
GROUP BY l.nombre;

-- n. Cantidad de pasajeros transportados, por dìa (fecha, cantidad)
SELECT DATE(v.fecha_partida) AS fecha, COUNT(*) AS 'pasajeros transportados'
FROM pasajero_toma_vuelo ptv 
INNER JOIN vuelo v ON ptv.vuelo_codigo=v.codigo
GROUP BY DAY(v.fecha_partida);

-- o. Cantidad de vuelos por pasajero (apellido, nombre, dni, cantidad)
SELECT p.apellido, p.nombre, p.dni, COUNT(*) AS 'Total de vuelos'
FROM pasajero_toma_vuelo ptv 
INNER JOIN pasajero p ON ptv.pasajero_dni=p.dni
-- group by p.dni;
GROUP BY ptv.pasajero_dni;