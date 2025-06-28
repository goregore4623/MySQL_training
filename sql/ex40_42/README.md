# MySQL Practice Exercises: Views and Indexes (Exercise 40-42)

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

CREATE TABLE departments (
    id INT PRIMARY KEY,
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

## Exercise 40: ビューの作成 (CREATE VIEW)

### 説明

ビューは、1つ以上のテーブルから導出された仮想的なテーブルです。複雑なクエリを単純化し、再利用可能にします。

### 文法

```sql
CREATE VIEW ビュー名 AS
SELECT カラム名 FROM テーブル名 WHERE 条件;
```

### 例題

`Sales`部署に所属する従業員の情報を表示する`sales_employees`というビューを作成してください。

#### 解答例

```sql
CREATE VIEW sales_employees AS
SELECT id, name, salary
FROM employees
WHERE department = 'Sales';
```

---

## Exercise 41: ビューの利用

### 説明

ビューは通常のテーブルと同じように`SELECT`文で利用できます。

### 例題

作成した`sales_employees`ビューから、給与が5600以上の従業員を検索してください。

#### 解答例

```sql
SELECT * FROM sales_employees WHERE salary >= 5600;
```

---

## Exercise 42: インデックスの作成 (CREATE INDEX)

### 説明

インデックスは、テーブルからのデータ取得を高速化するための仕組みです。特に、`WHERE`句や`JOIN`の条件で頻繁に使用されるカラムに作成すると効果的です。

### 文法

```sql
CREATE INDEX インデックス名 ON テーブル名 (カラム名);
```

### 例題

`employees`テーブルの`department`カラムに`idx_department`という名前のインデックスを作成してください。

#### 解答例

```sql
CREATE INDEX idx_department ON employees (department);
```

---
