use pruebas;

-- 11) Saca un listado con el nombre y teléfono de los usuarios con teléfono LG, SAMSUNG o MOTOROLA
select usuario, telefono, marca from tblUsuarios where marca in('LG','SAMSUNG','MOTOROLA');

-- 12) Ahora vamos a sacar el nombre y teléfono de los usuarios con teléfono que NO sean de la marca LG o SAMSUNG
select usuario, telefono, marca from tblUsuarios where marca not in('LG','SAMSUNG');

-- 13) Saca un informe con el login y teléfono de los usuarios con compañia telefónica NEXTEL
select telefono, compañia from tblUsuarios where compañia like ('NEXTEL');

-- 14) Saca por pantalla un informe con el nombre de los usuarios que NO sean de TELCEL
select usuario, compañia from tblUsuarios where compañia not in('TELCEL');

-- 15) Saca por pantalla un informe con el saldo promedio de los usuarios que tienen teléfono marca NOKIA
select (count(usuario)) as numero_de_usuarios, (avg(saldo)) AS saldo_promedio from tblUsuarios 

where marca in('NOKIA'); -- Ademas del saldo promedio de los usuarios de NOKIA, también se ha calculado 
-- el numero de usuarios que tiene dicha marca.

-- 16) Genera un informe sacando por pantalla el email de los usuarios que NO usan yahoo
select usuario, email from tblUsuarios where email not like('%yahoo%');

-- 17)  Saca por pantalla un informe con las marcas de teléfono en orden alfabético descendentemente
select marca from tblUsuarios order by marca desc;

-- 18)  Calcula el saldo promedio de los usuarios que tienen teléfono marca Nokia
-- Es repetido, se hace igual que el 15

-- 19) Genera un informe con el nombre y teléfono de los usuarios con teléfono que no sea de la marca BLACKBERRY
select usuario, telefono, marca from tblUsuarios where marca not in('BLACKBERRY');