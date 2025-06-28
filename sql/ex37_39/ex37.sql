-- 初期設定
CREATE DATABASE IF NOT EXISTS company;
USE company;

DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    hire_date DATE,
    salary DECIMAL(10, 2)
);

INSERT INTO employees (id, first_name, last_name, hire_date, salary) VALUES
(1, 'John', 'Doe', '2022-01-15', 6000.00),
(2, 'Jane', 'Smith', '2021-11-20', 4500.50),
(3, 'Mike', 'Johnson', '2023-03-10', 5500.75);

-- ex37
-- `employees`テーブルから、姓と名を連結したフルネームを大文字で表示し、その名前の長さを表示してください。
