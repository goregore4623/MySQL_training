CREATE DATABASE company;

USE company;

CREATE TABLE employees (
    id INT PRIMARY Key,
    name VARCHAR(100),
    department VARCHAR(50),
    salary INT
);

CREATE TABLE departments (
    id INT PRIMARY Key,
    department_name VARCHAR(50)
);

INSERT INTO employees (id, name, department, salary) VALUES
(1, 'John Doe', 'Sales', 6000),
(2, 'Jane Smith', 'HR', 4500),
(3, 'Mike Johnson', 'Sales', 5500),
(4, 'Emily Davis', 'IT', 7000),
(5, 'George Osaru', NULL, 10000);

INSERT INTO departments (id, department_name) VALUES
(1, 'Sales'),
(2, 'HR'),
(3, 'IT');

-- ex16
select emp.name, dep.department_name
from employees as emp
left join departments as dep
on emp.department = dep.department_name;