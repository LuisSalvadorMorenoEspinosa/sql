-- 9) Ahora vamos a contar el número de usuarios por nivel
select (count(usuario)) AS numero_de_usuarios, nivel from tblUsuarios
group by nivel
order by nivel desc