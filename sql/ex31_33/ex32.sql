-- ex32
-- employeesテーブルを自己結合し、各従業員とその上司の名前を表示してください。
select
    emp.name as employee,
    man.name as manager
from
    employees as emp
    join employees as man on emp.manager_id = man.id;