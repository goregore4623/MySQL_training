-- ex33
-- employeesテーブルとdepartmentsテーブルをクロス結合し、全ての従業員と部署の組み合わせを表示してください。
SELECT
    e.name,
    d.department_name
FROM
    employees e
    CROSS JOIN departments d;