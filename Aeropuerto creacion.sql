-- creo el esquema
CREATE SCHEMA IF NOT EXISTS aeropuerto;
-- eligo el esquema a utilizar
USE aeropuerto;
CREATE TABLE IF NOT EXISTS pais (
  idPais INT PRIMARY KEY,
  nombre VARCHAR (45) NOT NULL
);
CREATE TABLE IF NOT EXISTS marca (
	idMarca INT PRIMARY KEY,
    nombre VARCHAR (45) NOT NULL, 
    pais_idPais INT NOT NULL,
    FOREIGN KEY (pais_idPais) REFERENCES pais (idPais)
);
CREATE TABLE IF NOT EXISTS modelo (
	idModelo INT PRIMARY KEY,
    nombre VARCHAR (45) NOT NULL, 
    marca_idMarca INT NOT NULL,
    FOREIGN KEY (marca_idMarca) REFERENCES marca (idMarca)
);
CREATE TABLE IF NOT EXISTS avion (
	matricula VARCHAR(10) PRIMARY KEY,
    fecha_entrada_servicio DATE NOT NULL, 
    modelo_idModelo INT NOT NULL,
    FOREIGN KEY (modelo_idModelo) REFERENCES modelo (idModelo)
);
CREATE TABLE IF NOT EXISTS provincia (
	idProvincia INT PRIMARY KEY,
    nombre VARCHAR (45) NOT NULL
);
CREATE TABLE IF NOT EXISTS localidad (
	idLocalidad INT PRIMARY KEY,
    nombre VARCHAR (45) NOT NULL
);
CREATE TABLE IF NOT EXISTS calle (
	idCalle INT PRIMARY KEY,
    nombre VARCHAR (45) NOT NULL
);
CREATE TABLE IF NOT EXISTS pasajero (
    dni INT PRIMARY KEY,
    viajero_frecuente BINARY(1) NOT NULL,
    nombre VARCHAR (45) NOT NULL,
    apellido VARCHAR (45) NOT NULL,
	numero_calle INT NOT NULL,
	provincia_idProvincia INT NOT NULL,
	localidad_idLocalidad INT NOT NULL,
	calle_idCalle INT NOT NULL,
	FOREIGN KEY (provincia_idProvincia) REFERENCES provincia (idProvincia),
    FOREIGN KEY (localidad_idLocalidad) REFERENCES localidad (idLocalidad),
	FOREIGN KEY (calle_idCalle) REFERENCES calle (idCalle)
);
CREATE TABLE IF NOT EXISTS piloto (
	cuil VARCHAR (13) PRIMARY KEY,
    dni INT NOT NULL,
    nombre VARCHAR (45) NOT NULL,
    apellido VARCHAR (45) NOT NULL,
    numero_calle INT NOT NULL,
    fecha_ingreso DATE NOT NULL,
	provincia_idProvincia INT NOT NULL,
	localidad_idLocalidad INT NOT NULL,
	calle_idCalle INT NOT NULL,
	FOREIGN KEY (provincia_idProvincia) REFERENCES provincia (idProvincia),
    FOREIGN KEY (localidad_idLocalidad) REFERENCES localidad (idLocalidad),
	FOREIGN KEY (calle_idCalle) REFERENCES calle (idCalle)
);
CREATE TABLE IF NOT EXISTS ciudad (
	idCiudad INT PRIMARY KEY,
    nombre VARCHAR (45) NOT NULL
);
CREATE TABLE IF NOT EXISTS aeropuerto_origen (
	iata_origen VARCHAR(5) PRIMARY KEY,
    nombre VARCHAR (45) NOT NULL,
    ciudad_idCiudad INT NOT NULL,
    FOREIGN KEY (ciudad_idCiudad) REFERENCES ciudad (idCiudad)
);
CREATE TABLE IF NOT EXISTS aeropuerto_destino (
	iata_destino VARCHAR(5) PRIMARY KEY,
    nombre VARCHAR (45) NOT NULL,
    ciudad_idCiudad INT NOT NULL,
    FOREIGN KEY (ciudad_idCiudad) REFERENCES ciudad (idCiudad)
);
CREATE TABLE IF NOT EXISTS vuelo (
	codigo VARCHAR(10) PRIMARY KEY,
    fecha_llegada DATETIME NOT NULL,
    fecha_partida DATETIME NOT NULL,
    avion_matricula VARCHAR (10) NOT NULL,
    aeropuerto_origen_iata VARCHAR(5) NOT NULL,
	aeropuerto_destino_iata VARCHAR(5) NOT NULL,
	piloto_cuil VARCHAR (13) NOT NULL,
    FOREIGN KEY (avion_matricula) REFERENCES avion (matricula),
    FOREIGN KEY (aeropuerto_origen_iata) REFERENCES aeropuerto_origen (iata_origen),
	FOREIGN KEY (aeropuerto_destino_iata) REFERENCES aeropuerto_destino (iata_destino),
    FOREIGN KEY (piloto_cuil) REFERENCES piloto (cuil)
);
CREATE TABLE pasajero_toma_vuelo (
  vuelo_codigo VARCHAR(10) NOT NULL,
  pasajero_dni int NOT NULL,
  PRIMARY KEY (vuelo_codigo,pasajero_dni),
  FOREIGN KEY (vuelo_codigo) REFERENCES vuelo (codigo),
  FOREIGN KEY (pasajero_dni) REFERENCES pasajero (dni)
);

10:25:40	INSERT INTO vuelo
 (codigo, avion_matricula, aeropuerto_origen_iata, aeropuerto_destino_iata,
 fecha_partida, fecha_llegada,  piloto_cuil)  
 VALUES ('TT1234', 'LV-ABC', 'BUE', 'BRC', '2018-05-01 20:00:00', '2018-05-01 23:45:00', '20-12345678-8')	
 Error Code: 1452. Cannot add or update a child 
 row: a foreign key constraint fails 
 (`aeropuerto`.`vuelo`, CONSTRAINT `vuelo_ibfk_2` FOREIGN KEY
 (`aeropuerto_origen_iata`) REFERENCES `aeropuerto_origen` (`iata_origen`))	0.078 sec
