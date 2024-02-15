drop database if exists euroformac_clase;
create database euroformac_clase;
use euroformac_clase;

create table personas(DNI varchar(9) not null,
nombre varchar(50) not null,
apellidos varchar(50) not  null
);

insert into personas(DNI, nombre,apellidos) values 
('87965849H', 'Diana', 'Tamas'), 
('25698745U', 'Luis Salvador', 'Moreno Espinosa');