# MySQL Practice Exercises: Outer Joins and NULL (Exercise 16-18)

## 初期設定

以下のデータベース、テーブル、初期データが用意されているものとします。

### データベースとテーブルの作成

```sql
CREATE DATABASE company;

USE company;

CREATE TABLE employees (
    id INT PRIMARY Key,
    name VARCHAR(100),
    department VARCHAR(50),
    salary INT
);

CREATE TABLE departments (
    id INT PRIMARY Key,
    department_name VARCHAR(50)
);
```

### 初期データの挿入

```sql
INSERT INTO employees (id, name, department, salary) VALUES
(1, 'John Doe', 'Sales', 6000),
(2, 'Jane Smith', 'HR', 4500),
(3, 'Mike Johnson', 'Sales', 5500),
(4, 'Emily Davis', 'IT', 7000),
(5, 'George Osaru', NULL, 10000);

INSERT INTO departments (id, department_name) VALUES
(1, 'Sales'),
(2, 'HR'),
(3, 'IT');
```

---

## Exercise 16: テーブル結合（LEFT JOIN）

### 説明

`LEFT JOIN`は、左側のテーブルの全てのデータと、条件に一致する右側のテーブルのデータを取得します。右側のデータが存在しない場合はNULLが返されます。

### 文法

```sql
SELECT A.カラム名, B.カラム名
FROM テーブルA AS A
LEFT JOIN テーブルB AS B
ON A.結合キー = B.結合キー;
```

### 例題

`employees`テーブルと`departments`テーブルを左外部結合し、従業員名と部署名を表示してください。

#### 解答例

```sql
SELECT employees.name, departments.department_name
FROM employees
LEFT JOIN departments
ON employees.department = departments.department_name;
```

---

## Exercise 17: NULLの検索（IS NULL / IS NOT NULL）

### 説明

`IS NULL`は値がNULLであるデータを検索し、`IS NOT NULL`は値がNULLでないデータを検索します。

### 文法

```sql
SELECT * FROM テーブル名
WHERE カラム名 IS NULL;

SELECT * FROM テーブル名
WHERE カラム名 IS NOT NULL;
```

### 例題

`employees`テーブルから、部署が未設定（NULL）の従業員を検索してください。

#### 解答例

```sql
SELECT * FROM employees
WHERE department IS NULL;
```

---

## Exercise 18: 重複データの排除（DISTINCT）

### 説明

`DISTINCT`を使うと、重複を除いたデータを取得できます。

### 文法

```sql
SELECT DISTINCT カラム名 FROM テーブル名;
```

### 例題

`employees`テーブルから、重複のない部署名一覧を取得してください。

#### 解答例

```sql
SELECT DISTINCT department FROM employees;
```

---