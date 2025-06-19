-- 初期設定
CREATE DATABASE company;

USE company;

CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    salary INT
);

CREATE TABLE departments (
    id INT,
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

-- ex10
SELECT 'ex10';
SELECT COUNT(*) FROM employees;
