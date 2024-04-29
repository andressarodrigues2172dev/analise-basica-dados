/*Encadeamento de chaves relacionais*/
use empregados_db;
select 
  emp.nome as empregado,
  depto.nome as departamento
 from
   empregado emp ,
   departamento depto
 where 
   depto.cod_depto = emp.cod_depto;