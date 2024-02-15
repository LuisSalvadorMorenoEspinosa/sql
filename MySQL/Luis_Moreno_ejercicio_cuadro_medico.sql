-- Fuente: https://www.youtube.com/watch?v=fAFzi22pcnQ
-- Create database if not exists cuadro_medico;
use cuadro_medico;
drop table if exists consultas;
create table consultas(
idx INT primary key Auto_increment,
fechayhora datetime not null,
medico varchar(30) not null,
documento char(10) not null,
paciente varchar(30),
obrasocial varchar(30)
);

INSERT INTO consultas VALUES (
('1','2006-08-10 8:00','Perez','22333444','Juana Garcia','PAMI'),
('2','2006-08-10 10:00','Lopez','22333444','Juana Garcia','PAMI'),
('3','2006-08-10 8:30','Perez','23333444','Adela Gomez','PAMI'),
('4','2006-08-10 9:00','Perez','24333444','Juan Lopez','IPAM'),
('5','2006-08-10 10:00','Perez','25333444','Hector Juarez','OSDOP'),
('6','2006-08-10 8:30','Garcia','25333444','Ana Molina','PAMI'),
('7','2006-09-10 8:30','Garcia','25333444','Ana Molina','PAMI')
)