-- Numero de usuarios por marca de telefono
select marca, count(*) from tblUsuarios
group by marca -- No se puede mostrar los usuarios en el campo de al lado dado que por ejemplo para 
-- SAMSUNG hay 4 usuarios, si queremos poner el campo usuarios al lado de la marca tendriamos que poner los 4
-- nombres en la misma fila lo cual no se puede llevar a cabo
order by count(*) desc;
-- Saca un informe con la suma de los saldos de los usuarios de la compañía telefónica NEXTEL
select sum(saldo) as saldo_NEXTEL from tblusuarios 
where compañia=('NEXTEL');
-- Estudiar replace, (reemplaza una cadena de caracteres por otra), y concat, (une dos cadenas), SON IMPORTANTES
-- La empresa quiere saber el número de usuarios que hay por compañía telefónica
select compañia, (count(usuario)) as numero_de_usuarios from tblusuarios
group by compañia
order by numero_de_usuarios desc;
-- Otra manera de hacerlo
 select count(*) usuario, compañia from tblusuarios
 group by compañia