use pruebas;
select*from tblusuarios;
-- 20) Crea un informe con el login (campo usuario) de los usuarios con nivel 1 o 3
select usuario, nivel from tblusuarios where nivel in('1','3');

-- 21) Genera un informe con el nombre y teléfono de los usuarios con teléfono que no sea de la marca BLACKBERRY
select usuario, telefono, marca from tblusuarios where marca not in ('Blackberry');

-- 22) Contar el número de usuarios por sexo y agruparlos por sexo
select distinct(sexo) as zezo, (count(sexo)) as hembras_y_machos from tblusuarios
group by sexo;

-- 23) Un nuevo informe con el login y teléfono de los usuarios con compañia telefónica AT&T
select usuario, telefono, compañia from pruebas.tblusuarios where compañia in('AT&T');

-- 24) Saca por pantalla los números de teléfono y los usuarios con saldo mayor a 300
Select usuario, telefono, saldo from tblusuarios where saldo > 300;

-- 25) Genera un informe con la suma de los saldos de los usuarios de la compañía telefónica UNEFON
select sum(saldo) from tblusuarios where compañia in('UNEFON');

-- 26)  Genera un informe con el email y el nombre de usuario de los usuarios que usan hotmail
select email, usuario from tblusuarios where email like ('%hotmail%');

-- 27) Saca por pantalla el login y teléfono de los usuarios con compañia telefónica IUSACELL o TELCEL
select usuario, telefono, compañia from tblusuarios where compañia in('IUSACELL', 'TELCEL');

-- 28) Calcula la suma de los saldos de los usuarios de las compañías telefónicas TELCEL y IUSACELL
select sum(saldo) from tblusuarios where compañia in('IUSACELL', 'TELCEL');
