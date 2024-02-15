-- Vamos a crear una nueva BBDD o al menos a intentarlo
Create database if not exists pruebas; -- Estamos creando una base de datos que se llama "pruebas". El puntero se 
-- dirige ahora mismo a tienda; (se ve en Schemas en la barra lateral izquierda inferior. Una vez que hemos creado
-- y actualizado los schemas el puntero cambia
Use pruebas; -- Estamos diciendole al sistema que el puntero pase a pruebas
-- El cuarto simbolito es para crear una BBDD, (debajo de la linea de File, Edit, View,...)
Create table tblUsuarios ( -- Vamos a crear una tabla que vamos a llamar tblUsuarios
idx INT primary key Auto_increment, -- Introducirmos el tipo de elementos e introducimos una clave primaria que
-- se va incrementando de 1 en 1 esto es para indexar las columnas
usuario VARCHAR (20), -- Definimos la mayoria de las variables como tipo VARCHAR que es una cadena de caracteres
nombre VARCHAR (20),
sexo VARCHAR (1),
nivel TINYINT, -- numero entero pequeño es lo que quiere decir TINYINT
email VARCHAR (50),
telefono VARCHAR(20),
marca VARCHAR(20),
compañia VARCHAR (20),
saldo FLOAT, -- No es necesario especificar el numero de decimales, solo decirle que es un numero flotante
activo BOOLEAN
);

-- UPDATE <tabla> SET <campo> = REPLACE ( <columna>, '<cadena antigua>', '<cadena nueva>' ) este es el comando para 
-- sustituir una cadena de caracteres por otra