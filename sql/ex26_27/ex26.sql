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
    ('Bob', NULL, 'Engineering'),
    ('Charlie', 28, NULL),
    ('David', 35, 'Engineering'),
    ('Eve', NULL, 'HR'),
    ('Frank', 22, NULL);

-- ex26
select
    *
from
    employees
where
    age is Null;