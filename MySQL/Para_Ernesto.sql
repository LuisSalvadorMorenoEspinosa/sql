drop database if exists cuadro_medico;
create database cuadro_medico;
use cuadro_medico;

create table consultas_2(
fechayhora datetime not null,
medico varchar(30) not null,
documento varchar(30) not null,
paciente varchar(30),
obrasocial varchar(30)
);

Insert into consultas_2 (fechayhora, medico, documento, paciente, obrasocial) values
('2006-08-10 8:00','Perez','22333444','Juana Garcia','PAMI'),
('2006-08-10 10:00','Lopez','22333444','Juana Garcia','PAMI'),
('2006-08-10 8:30','Perez','23333444','Adela Gomez','PAMI'),
('2006-08-10 9:00','Perez','24333444','Juan Lopez','IPAM'),
('2006-08-10 10:00','Perez','25333444','Hector Juarez','OSDOP'),
('2006-08-10 8:30','Garcia','25333444','Ana Molina','PAMI'),
('2006-09-10 8:30','Garcia','25333444','Ana Molina','PAMI')

-- Ernesto aqui tienes una tabla de datos desde 0, mi recomendación para que aprendas un poco más, es que la ejecutes,
-- la comentes y la entiendas, y luego resuelvas los ejercicios que he puesto a continuación.

-- 1. Muestre las distintas obras sociales


-- 2. Muestre la cantidad de distintas obras sociales


-- 3. Muestre los nombres de los distintos pacientes


-- 4. Calcule la cantidad de medicos, (SIN REPETIR), que tienen consultas agrupado por mes y dia;


-- Soluciones: https://www.youtube.com/watch?v=fAFzi22pcnQ
