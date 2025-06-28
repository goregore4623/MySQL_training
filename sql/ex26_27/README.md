# MySQL Practice Exercises: NULL Handling (Exercise 26-27)

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
('Bob', NULL, 'Engineering'),
('Charlie', 28, NULL),
('David', 35, 'Engineering'),
('Eve', NULL, 'HR'),
('Frank', 22, NULL);
```

---

## Exercise 26: NULL 値の検索

### 説明

NULL は「データが存在しない」ことを表す特別な値です。通常の比較（= や !=）では NULL を正しく判定できないため、`IS NULL` を使用します。

### 文法

```sql
SELECT * FROM テーブル名
WHERE カラム名 IS NULL;
```

### 例題

`employees` テーブルから、年齢が未登録（NULL）である社員を検索してください。

#### 解答例

```sql
SELECT * FROM employees
WHERE age IS NULL;
```

---

## Exercise 27: NULL ではない値の検索

### 説明

`IS NOT NULL` を使うと、値が NULL ではないデータを抽出できます。

### 文法

```sql
SELECT * FROM テーブル名
WHERE カラム名 IS NOT NULL;
```

### 例題

`employees` テーブルから、部署名が登録されている社員を検索してください。

#### 解答例

```sql
SELECT * FROM employees
WHERE department IS NOT NULL;
```

---