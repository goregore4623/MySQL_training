# MySQL Practice Exercises: Data Manipulation and Sorting (Exercise 19-21)

## 初期設定

以下のデータベース、テーブル、初期データが用意されているものとします。

### データベースとテーブルの作成

```sql
CREATE DATABASE company;

USE company;

CREATE TABLE employees (
    id INT,
    name VARCHAR(100),
    department VARCHAR(50),
    salary INT
);

CREATE TABLE departments (
    id INT,
    department_name VARCHAR(50)
);
```

### 初期データの挿入

```sql
INSERT INTO employees (id, name, department, salary) VALUES
(1, 'John Doe', 'Sales', 6000),
(2, 'Jane Smith', 'HR', 4500),
(3, 'Mike Johnson', 'Sales', 5500),
(4, 'Emily Davis', 'IT', 7000);

INSERT INTO departments (id, department_name) VALUES
(1, 'Sales'),
(2, 'HR'),
(3, 'IT');
```

---

## Exercise 19: ソート（ORDER BY）

### 説明

`ORDER BY`を使用すると、検索結果を指定したカラムで昇順または降順に並び替えることができます。

### 文法

```sql
SELECT * FROM テーブル名
ORDER BY カラム名 ASC;  -- 昇順

SELECT * FROM テーブル名
ORDER BY カラム名 DESC; -- 降順
```

### 例題

`employees`テーブルの従業員を給与が高い順に並べて表示してください。

#### 解答例

```sql
SELECT * FROM employees
ORDER BY salary DESC;
```

---

## Exercise 20: レコードの追加（INSERT INTO）

### 説明

`INSERT INTO`を使用すると、テーブルに新しいデータを追加できます。

### 文法

```sql
INSERT INTO テーブル名 (カラム1, カラム2, ...) VALUES (値1, 値2, ...);
```

### 例題

`employees`テーブルに以下の従業員を追加してください。

* 名前：Tom Wilson
* 部署：Marketing
* 給与：5000

#### 解答例

```sql
INSERT INTO employees (id, name, department, salary)
VALUES (5, 'Tom Wilson', 'Marketing', 5000);
```

---

## Exercise 21: レコードの更新（UPDATE）

### 説明

`UPDATE`を使用すると、既存のレコードのデータを更新することができます。

### 文法

```sql
UPDATE テーブル名
SET カラム名 = 新しい値
WHERE 条件;
```

### 例題

`employees`テーブルで、`Tom Wilson`の給与を5500に更新してください。

#### 解答例

```sql
UPDATE employees
SET salary = 5500
WHERE name = 'Tom Wilson';
```

---