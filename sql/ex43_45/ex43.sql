-- 初期設定
CREATE DATABASE IF NOT EXISTS bank;
USE bank;

DROP TABLE IF EXISTS accounts;

CREATE TABLE accounts (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    balance INT
);

INSERT INTO accounts (id, name, balance) VALUES
(1, 'Alice', 1000),
(2, 'Bob', 2000);

-- ex43
-- Aliceの残高を500減らし、Bobの残高を500増やすという一連の処理をトランザクションとして開始してください。
