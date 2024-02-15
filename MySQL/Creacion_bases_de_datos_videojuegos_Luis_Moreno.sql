drop database if exists videojuegos; -- Eliminamos la base de datos en caso de que exista

create database videojuegos; -- Creamos la base de datos

use videojuegos; -- La usamos

create table peliculas(			-- Creamos la tabla peliculas con los siguientes campos
codPelicula INT NOT NULL AUTO_INCREMENT PRIMARY KEY,		-- Clave primaria
nombre VARCHAR(40) NOT NULL,
fechaAlta DATE NULL,		-- Tipo de dato de tiempo que solo especifica hasta el dia
stock TINYINT NULL,			-- Tipo de dato que solo acepta valores pequeños
precio FLOAT NOT NULL
);

create table clientes(
dniCliente VARCHAR(9) NOT NULL PRIMARY KEY,
nombre VARCHAR(40) NOT NULL,
direccion VARCHAR(40) NULL,
poblacion VARCHAR(60) NULL,
codigoPostal VARCHAR(5) NULL,
fechaNac DATE NULL
);

create table compras(		-- Esta es la tabla clave
codPelicula INT NOT NULL,	-- Esta clave es una clave foránea de la tabla peliculas
dniCliente VARCHAR(9) NOT NULL,		-- Esta clave es una clave foránea de la tabla clientes
fechaCompra DATETIME NOT NULL,		-- Esta es la clave primaria de esta tabla

-- Cuando existe más de 1 clave primaria, han de ponerse en las restricciones dichas claves primarias dentro
-- de la tabla donde existan esas claves. Las restricciones han de ponerse como primary key(...), foreign
-- key (...) references (...).

PRIMARY KEY (fechaCompra, codPelicula, dniCliente), -- Aquí definimos las claves primarias que se relacionen con
-- esta tabla que en este caso son las 3 tablas
FOREIGN KEY (codPelicula) REFERENCES peliculas(codPelicula), -- Definimos la clave foránea de la tabla
-- peliculas que es el campo codPelicula
FOREIGN KEY (dniCliente) REFERENCES clientes(dniCliente) -- Definimos la clave foránea de la tabla
-- clientes que es el campo dniCliente
);

-- Si quiero sacar el diagrama E-R he de seguir los siguientes pasos:
	-- Database -> Reverse Engineer