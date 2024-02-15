Use pruebas;
Select nombre, marca from tblUsuarios
where marca in('NOKIA', 'BLACKBERRY', 'SONY'); -- Ejercicio 3, (sacar esas 3 marcas)
-- A partir de aqui ejercicio 4
-- Ahora vamos a generar un informe con el número de usuarios sin saldo o inactivos
use pruebas;
select count(*) from tblUsuarios -- Contamos todo
where saldo<=0 or activo='0'; -- Ponemos condiciones
-- Otra forma de hacer el 4
SELECT COUNT(*) FROM tblUsuarios WHERE NOT activo OR saldo <= 0;
-- Ejercicio 5
select usuario, nivel AS niveles from tblUsuarios 
where nivel IN('1','2','3')
order by nivel DESC