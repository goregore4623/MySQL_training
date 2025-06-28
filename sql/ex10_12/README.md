# MySQL Practice Exercises: Aggregate Functions (Exercise 10-12)

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

## Exercise 10: 集計関数（COUNT）

### 説明

`COUNT`関数は、データの件数を数えるときに使用します。

### 文法

```sql
SELECT COUNT(*) FROM テーブル名;

SELECT COUNT(カラム名) FROM テーブル名 WHERE 条件;
```

### 例題

`employees`テーブルに登録されている従業員の人数を取得してください。

#### 解答例

```sql
SELECT COUNT(*) FROM employees;
```

---

## Exercise 11: 集計関数（AVG, SUM）

### 説明

* `AVG`: 平均値を求める
* `SUM`: 合計値を求める

### 文法

```sql
SELECT AVG(カラム名) FROM テーブル名;

SELECT SUM(カラム名) FROM テーブル名;
```

### 例題

`employees`テーブルの給与の平均と合計を取得してください。

#### 解答例

```sql
SELECT AVG(salary) AS 平均給与, SUM(salary) AS 合計給与 FROM employees;
```

---

## Exercise 12: グループ化（GROUP BY）

### 説明

`GROUP BY`を使うと、指定したカラムごとに集計することができます。

### 文法

```sql
SELECT カラム名, 集計関数 FROM テーブル名
GROUP BY カラム名;
```

### 例題

`employees`テーブルで部署ごとの人数を取得してください。

#### 解答例

```sql
SELECT department, COUNT(*) AS 人数 FROM employees
GROUP BY department;
```

---