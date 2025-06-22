select emp.name, dep.department_name 
from employees as emp
inner join departments as dep 
on emp.department = dep.department_name;