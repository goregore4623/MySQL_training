-- 初期設定
CREATE DATABASE IF NOT EXISTS company;
USE company;

DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    salary INT
);

INSERT INTO employees (id, name, department, salary) VALUES
(1, 'John Doe', 'Sales', 6000),
(2, 'Jane Smith', 'HR', 4500),
(3, 'Mike Johnson', 'Sales', 5500),
(4, 'Emily Davis', 'IT', 7000);

-- ex49
-- `employees`テーブルの従業員の給与に基づいて、給与が6000以上の場合は'High', 5000以上の場合は'Medium', それ以外の場合は'Low'と評価する新しいカラム`salary_rank`を追加して表示してください。
