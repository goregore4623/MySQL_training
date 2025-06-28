-- 初期設定
CREATE DATABASE IF NOT EXISTS company;
USE company;

DROP TABLE IF EXISTS employees, departments;
DROP VIEW IF EXISTS sales_employees;

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    salary INT
);

CREATE TABLE departments (
    id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

INSERT INTO employees (id, name, department, salary) VALUES
(1, 'John Doe', 'Sales', 6000),
(2, 'Jane Smith', 'HR', 4500),
(3, 'Mike Johnson', 'Sales', 5500),
(4, 'Emily Davis', 'IT', 7000);

INSERT INTO departments (id, department_name) VALUES
(1, 'Sales'),
(2, 'HR'),
(3, 'IT');

-- ex40
-- `Sales`部署に所属する従業員の情報を表示する`sales_employees`というビューを作成してください。
