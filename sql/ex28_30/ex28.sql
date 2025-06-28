-- init
CREATE DATABASE company;

USE company;

CREATE TABLE
    employees (
        id INT AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(100),
        age INT,
        department VARCHAR(100),
        salary INT
    );

INSERT INTO
    employees (name, age, department, salary)
VALUES
    ('Alice', 30, 'HR', 5000),
    ('Bob', 25, 'Engineering', 6000),
    ('Charlie', 28, 'Sales', 5500),
    ('David', 35, 'Engineering', 7000),
    ('Eve', 40, 'HR', 6200),
    ('Frank', 22, 'Marketing', 4800);

-- ex28
select
    *
from
    employees
where
    age >= 30
    and salary >= 6000;