-- ex14
select name, salary from employees
where salary = (select max(salary) from employees );