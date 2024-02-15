use tienda; 
select * from producto 
where nombre LIKE ('%TB%') -- El %TB% es para decirle al programa que coja todos
-- los registros que contengan la palabra TB

-- Investigar el where...in...