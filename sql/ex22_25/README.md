# MySQL Practice Exercises (Exercise 22-25)

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
    department VARCHAR(100)
);
```

### 初期データの挿入

```sql
INSERT INTO employees (name, age, department) VALUES
('Alice', 30, 'HR'),
('Bob', 25, 'Engineering'),
('Charlie', 28, 'Sales'),
('David', 35, 'Engineering'),
('Eve', 40, 'HR'),
('Frank', 22, 'Marketing');
```

---

## Exercise 22: 年齢が 30 歳を超える社員の検索

### 説明

`>` 演算子を使うと、指定した値より大きいデータを抽出できます。

### 文法

```sql
SELECT * FROM テーブル名
WHERE カラム名 > 値;
```

### 例題

`employees`テーブルから年齢が 30 歳を超える社員を検索してください。

#### 解答例

```sql
SELECT * FROM employees
WHERE age > 30;
```

---

## Exercise 23: 部署が「HR」または「Sales」の社員の検索

### 説明

`IN` 演算子を使うと、複数の値のいずれかに合致するデータを抽出できます。

### 文法

```sql
SELECT * FROM テーブル名
WHERE カラム名 IN (値1, 値2, ...);
```

### 例題

`employees`テーブルから部署が「HR」または「Sales」の社員を検索してください。

#### 解答例

```sql
SELECT * FROM employees
WHERE department IN ('HR', 'Sales');
```

---

## Exercise 24: 年齢が 25 歳以上 30 歳以下の社員の検索

### 説明

`BETWEEN ... AND ...` 演算子は、指定した範囲内の値を抽出します。

### 文法

```sql
SELECT * FROM テーブル名
WHERE カラム名 BETWEEN 値1 AND 値2;
```

### 例題

`employees`テーブルから年齢が 25 歳以上 30 歳以下の社員を検索してください。

#### 解答例

```sql
SELECT * FROM employees
WHERE age BETWEEN 25 AND 30;
```

---

## Exercise 25: 「Engineering」以外の部署の社員の検索

### 説明

`!=` または `<>` は「等しくない」条件を指定できます。

### 文法

```sql
SELECT * FROM テーブル名
WHERE カラム名 != 値;
```

### 例題

`employees`テーブルから部署が「Engineering」以外の社員を検索してください。

#### 解答例

```sql
SELECT * FROM employees
WHERE department != 'Engineering';
```

---
