-- init
CREATE DATABASE company;

USE company;

CREATE TABLE
    employees (
        id INT AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(100),
        age INT,
        department VARCHAR(100)
    );

INSERT INTO
    employees (name, age, department)
VALUES
    ('Alice', 30, 'HR'),
    ('Bob', 25, 'Engineering'),
    ('Charlie', 28, 'Sales'),
    ('David', 35, 'Engineering'),
    ('Eve', 40, 'HR'),
    ('Frank', 22, 'Marketing');

-- ex22
select
    *
from
    employees
where
    age > s 30;