delimiter &&
create trigger gatilho_exclusao_emp before delete
on empregado
for each row 
begin
delete from dependentede where dep.cod_emp = old.cod_emp;
end
&&

start transaction;
delete from empregado where cod_emp = 18;
select * from empregado;
select * from dependente;
rollback;
commit