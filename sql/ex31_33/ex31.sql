-- 初期設定
CREATE DATABASE IF NOT EXISTS company;
USE company;

DROP TABLE IF EXISTS employees, departments;

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    manager_id INT
);

CREATE TABLE departments (
    id INT PRIMARY KEY,
    department_name VARCHAR(50),
    employee_id INT
);

INSERT INTO employees (id, name, manager_id) VALUES
(1, 'John Doe', NULL),
(2, 'Jane Smith', 1),
(3, 'Mike Johnson', 1),
(4, 'Emily Davis', 2);

INSERT INTO departments (id, department_name, employee_id) VALUES
(1, 'Sales', 1),
(2, 'HR', 2),
(3, 'IT', 3),
(4, 'Marketing', NULL);

-- ex31
-- employeesテーブルとdepartmentsテーブルを右外部結合し、従業員が割り当てられていない部署も表示してください。