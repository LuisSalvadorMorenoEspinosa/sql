-- select nombre from tblusuarios; -- Ejercicio 1
select nombre, sexo, saldo from tblusuarios
where (sexo = 'M')
order by saldo
limit 1


