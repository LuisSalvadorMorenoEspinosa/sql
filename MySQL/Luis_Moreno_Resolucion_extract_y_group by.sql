use pruebas;
select*from consultas;

-- 4. Calcule la cantidad de medicos, (SIN REPETIR), que tienen consultas agrupado por mes y dia;
select (extract(month from fechayhora)) as mes, (extract(day from fechayhora)) as dia,
count(distinct(medico)) as numero_de_medicos from consultas
group by mes, dia -- Estamos agrupando por mes y dia, esto puede hacerse porque estamos extrayendo
-- los datos del mismo campo, es decir, estamos agrupando por el campo que originalmente se llamaba fechayhora.