-- ex12b
-- `employees`テーブルで部署ごとの平均給与を計算し、平均給与が5600以上の部署のみを表示してください。
SELECT
    department,
    avg(salary) AS average_salary
FROM
    employees
GROUP BY
    department
HAVING
    average_salary >= 5600;