-- Step 2：データの検索・更新・削除

-- 2-1. 条件付き検索（WHERE）
-- SELECT カラム名 FROM テーブル名 WHERE 条件;
SELECT * FROM employees WHERE department = 'Engineering';

-- 2-2. データの更新（UPDATE）
-- UPDATE テーブル名 SET カラム名 = 新しい値 WHERE 条件;
UPDATE employees SET age = 26 WHERE name = 'Bob';

-- 2-3. データの削除（DELETE）
-- DELETE FROM テーブル名 WHERE 条件;
DELETE FROM employees WHERE name = 'Charlie';


SELECT * FROM employees;