# MySQL Practice Exercises: Logical Operators (Exercise 28-30)

## 初期設定

以下のデータベース、テーブル、初期データが用意されているものとします。

### データベースとテーブルの作成

```sql
CREATE DATABASE company;

USE company;

CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    department VARCHAR(100),
    salary INT
);
```

### 初期データの挿入

```sql
INSERT INTO employees (name, age, department, salary) VALUES
('Alice', 30, 'HR', 5000),
('Bob', 25, 'Engineering', 6000),
('Charlie', 28, 'Sales', 5500),
('David', 35, 'Engineering', 7000),
('Eve', 40, 'HR', 6200),
('Frank', 22, 'Marketing', 4800);
```

---

## Exercise 28: 複数条件の AND 検索

### 説明

`AND` を使用すると、複数の条件をすべて満たすレコードを検索できます。

### 文法

```sql
SELECT * FROM テーブル名
WHERE 条件1 AND 条件2;
```

### 例題

`employees` テーブルから、年齢が 30 歳以上かつ給与が 6000 以上の社員を検索してください。

#### 解答例

```sql
SELECT * FROM employees
WHERE age >= 30 AND salary >= 6000;
```

---

## Exercise 29: 複数条件の OR 検索

### 説明

`OR` を使用すると、複数の条件のいずれかを満たすレコードを検索できます。

### 文法

```sql
SELECT * FROM テーブル名
WHERE 条件1 OR 条件2;
```

### 例題

`employees` テーブルから、部署が「HR」または「Sales」の社員を検索してください。

#### 解答例

```sql
SELECT * FROM employees
WHERE department = 'HR' OR department = 'Sales';
```

---

## Exercise 30: NOT を使った否定条件

### 説明

`NOT` を使用すると、条件を否定できます。

### 文法

```sql
SELECT * FROM テーブル名
WHERE NOT 条件;
```

### 例題

`employees` テーブルから、部署が「Engineering」以外の社員を検索してください。

#### 解答例

```sql
SELECT * FROM employees
WHERE NOT department = 'Engineering';
```

---