/* Extração com SubQuery*/
use empregados_db;
select * from empregado where cod_depto in(
select cod_depto from departamento where cod_depto <2)
;

/*Calculo com Datas*/

select *, floor(datediff(now(), dt_nascimento ) / 365) as idade in( select idade < 10) from dependente;

/*Todos os empregados que tem os dependentes menores de 10 anos*/
select * from empregado where cod_emp in(
select cod_emp
from dependente
where floor(datediff(now(), dt_nascimento ) / 365)  < 18 );
;

