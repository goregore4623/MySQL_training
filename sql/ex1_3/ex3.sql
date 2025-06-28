-- Step 3：並び替え・集計・結合
-- 3-1. 並び替え（ORDER BY）
-- SELECT * FROM テーブル名 ORDER BY カラム名 ASC;  -- 昇順（小さい順）
-- SELECT * FROM テーブル名 ORDER BY カラム名 DESC; -- 降順（大きい順）

SELECT * FROM employees ORDER BY age DESC;
SELECT * FROM employees ORDER BY age ASC;

-- 3-2. 件数の集計（COUNT）
-- SELECT COUNT(*) FROM テーブル名;

SELECT COUNT(*) FROM employees;

-- 3-3. グループごとの集計（GROUP BY）
-- SELECT カラム名, 集計関数 FROM テーブル名 GROUP BY カラム名;

SELECT department, COUNT(*) AS count FROM employees GROUP BY department; -- ASをつけることでCOUNT関数のカラムに特定の名前をつける

-- 3-4. テーブルの結合（JOIN）
-- SELECT カラム名 FROM テーブル1
-- JOIN テーブル2 ON テーブル1.結合キー = テーブル2.結合キー;

CREATE TABLE departments (
    name VARCHAR(100) PRIMARY KEY,
    location VARCHAR(100)
);

-- データの挿入
INSERT INTO departments (name, location) VALUES 
    ('HR', 'Tokyo'),
    ('Engineering', 'Osaka'),
    ('Sales', 'Nagoya');

-- データの結合
SELECT e.name, e.department, d.location
FROM employees e
JOIN departments d ON e.department = d.name;

DROP TABLE employees;
DROP DATABASE company;