-- 初期設定
CREATE DATABASE company;

USE company;

CREATE TABLE employees (
    id INT,
    name VARCHAR(100),
    department VARCHAR(50),
    salary INT
);

INSERT INTO employees (id, name, department, salary) VALUES
(1, 'John Doe', 'Sales', 5000),
(2, 'Jane Smith', 'HR', 4500),
(3, 'Mike Johnson', 'Sales', 5500);


-- ex4
SELECT 'ex4';
UPDATE employees
SET salary = 6000
WHERE id = 1;

SELECT * FROM employees;
