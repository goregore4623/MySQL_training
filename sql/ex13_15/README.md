# MySQL Practice Exercises (Exercise 13-15)

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

## Exercise 13: サブクエリ（IN）

### 説明

サブクエリとは、クエリの中に埋め込むクエリのことです。
`IN`を使うと、サブクエリの結果に一致するデータを検索できます。

### 文法

```sql
SELECT * FROM テーブル名
WHERE カラム名 IN (サブクエリ);
```

### 例題

`departments`テーブルに登録されている部署に所属している従業員を全て表示してください。

#### 解答例

```sql
SELECT * FROM employees
WHERE department IN (SELECT department_name FROM departments);
```

---

## Exercise 14: サブクエリ（比較）

### 説明

サブクエリは、比較演算子（=, >, < など）と組み合わせて、一時的な検索結果と比較することもできます。

### 文法

```sql
SELECT * FROM テーブル名
WHERE カラム名 = (サブクエリ);
```

### 例題

`employees`テーブルで、最も高い給与の従業員を検索してください。

#### 解答例

```sql
SELECT * FROM employees
WHERE salary = (SELECT MAX(salary) FROM employees);
```

---

## Exercise 15: テーブル結合（INNER JOIN）

### 説明

`INNER JOIN`を使うと、複数のテーブルを関連付けてデータを取得できます。

### 文法

```sql
SELECT A.カラム名, B.カラム名
FROM テーブルA AS A
INNER JOIN テーブルB AS B
ON A.結合キー = B.結合キー;
```

### 例題

`employees`テーブルと`departments`テーブルを結合し、従業員名と部署名を表示してください。

#### 解答例

```sql
SELECT employees.name, departments.department_name
FROM employees
INNER JOIN departments
ON employees.department = departments.department_name;
```

---
