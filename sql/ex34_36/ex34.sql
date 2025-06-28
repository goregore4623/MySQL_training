-- 初期設定
CREATE DATABASE IF NOT EXISTS company;
USE company;

DROP TABLE IF EXISTS products;

-- ex34
-- 以下の仕様で`products`テーブルを作成してください。
-- 
-- - `id`: INT, PRIMARY KEY, AUTO_INCREMENT
-- - `name`: VARCHAR(100)
-- - `price`: DECIMAL(10, 2)
-- - `description`: TEXT
-- - `release_date`: DATE