drop function if exists NumeroMayor;
delimiter // -- delimiter se usa para ejecutar por separado lineas de workbench
create function NumeroMayor(
numero1 int, -- Se pone coma y no punto y coma, porque la sentencia SIGUE, NO SE ACABA
numero2 int
)
returns int
deterministic
begin -- Es necesario indicarle al programa que queremos iniciar la definicion de la funcion
if numero1<numero2 then -- Si se cumple esta condicion ENTONCES haz lo siguiente
return numero1; -- Aqui devuelveme el numero1, es necesario poner punto y coma YA QUE SE ACABA este if
else
return numero2;
end if;
end //
delimiter //

select NumeroMayor(2,9)

