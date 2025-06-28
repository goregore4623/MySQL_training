-- ex29
select
    *
from
    employees
where
    department = 'HR'
    or department = 'Sales';