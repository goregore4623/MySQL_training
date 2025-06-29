-- ex12a
-- `employees`テーブルの給与の最小値と最大値を取得してください。
SELECT
    min(salary) AS '最小値',
    max(salary) AS '最大値'
FROM
    employees;