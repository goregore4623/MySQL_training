-- データベースはデータを管理する「箱」です。最初にデータベースを作成してから、テーブルを作っていきます。
-- CREATE DATABASE データベース名;

-- 1-1. データベースの作成
-- CREATE DATABASE データベース名;
CREATE DATABASE company;
USE company;

-- 1-2. テーブルの作成
-- CREATE TABLE テーブル名 (
--     カラム名 データ型 制約,
--     カラム名 データ型 制約,
--     ...
-- );

CREATE TABLE employees (
    name VARCHAR(255),
    id INT AUTO_INCREMENT PRIMARY KEY, -- PRIMARY KEY はテーブル内で一意の値を持つカラムを指定するためのものです。AUTO_INCREMENTを指定することでidカラムに自動で連番が割り当てられます。
    age INT,
    department VARCHAR(255)
);

-- 1-3. データの追加(INSERT)
-- INSERT INTO テーブル名 (カラム名1, カラム名2, ...) VALUES (値1, 値2, ...);

INSERT INTO employees (name, age, department) VALUES ('ALICE', 30, 'HR');
INSERT INTO employees (name, age, department) VALUES ('Bob', 25, 'Engineering');
INSERT INTO employees (name, age, department) VALUES ('Charlie', 28, 'Sales');

-- 1-4. データの表示（SELECT）
-- SELECT カラム名1, カラム名2, ... FROM テーブル名;
-- -- すべてのデータを表示したいときは「*」
-- SELECT * FROM テーブル名;

SELECT * FROM employees;

-- -- データベースを削除する場合は DROP DATABASE データベース名; を使用します。
-- DROP DATABASE company;