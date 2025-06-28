# MySQL Practice Exercises: Conditional Logic (Exercise 49-51)

## 初期設定

以下のデータベース、テーブル、初期データが用意されているものとします。

### データベースとテーブルの作成

```sql
CREATE DATABASE company;

USE company;

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    salary INT
);
```

### 初期データの挿入

```sql
INSERT INTO employees (id, name, department, salary) VALUES
(1, 'John Doe', 'Sales', 6000),
(2, 'Jane Smith', 'HR', 4500),
(3, 'Mike Johnson', 'Sales', 5500),
(4, 'Emily Davis', 'IT', 7000);
```

---

## Exercise 49: CASE文による条件分岐

### 説明

`CASE`文を使用すると、クエリ内で条件に応じた値を返すことができます。

### 文法

```sql
SELECT
    CASE
        WHEN 条件1 THEN 結果1
        WHEN 条件2 THEN 結果2
        ELSE 結果3
    END AS 新しいカラム名
FROM テーブル名;
```

### 例題

`employees`テーブルの従業員の給与に基づいて、給与が6000以上の場合は'High', 5000以上の場合は'Medium', それ以外の場合は'Low'と評価する新しいカラム`salary_rank`を追加して表示してください。

#### 解答例

```sql
SELECT
    name,
    salary,
    CASE
        WHEN salary >= 6000 THEN 'High'
        WHEN salary >= 5000 THEN 'Medium'
        ELSE 'Low'
    END AS salary_rank
FROM employees;
```

---

## Exercise 50: CASE文と集計関数

### 説明

`CASE`文と`GROUP BY`を組み合わせることで、条件に基づいたグループごとの集計が可能です。

### 例題

`employees`テーブルの`salary_rank`（Exercise 49で定義）ごとに、従業員の人数をカウントしてください。

#### 解答例

```sql
SELECT
    CASE
        WHEN salary >= 6000 THEN 'High'
        WHEN salary >= 5000 THEN 'Medium'
        ELSE 'Low'
    END AS salary_rank,
    COUNT(*) AS employee_count
FROM employees
GROUP BY salary_rank;
```

---

## Exercise 51: UPDATE文でのCASE利用

### 説明

`CASE`文は`UPDATE`ステートメント内でも使用でき、条件に応じて更新する値を変更できます。

### 例題

`employees`テーブルに`bonus`という新しい`INT`型のカラムを追加してください。その後、`department`が'Sales'なら給与の10%、'IT'なら5%、それ以外は2%をボーナスとして設定する`UPDATE`文を記述してください。

#### 解答例

```sql
ALTER TABLE employees ADD COLUMN bonus INT;

UPDATE employees
SET bonus = CASE
    WHEN department = 'Sales' THEN salary * 0.1
    WHEN department = 'IT' THEN salary * 0.05
    ELSE salary * 0.02
END;
```

---
