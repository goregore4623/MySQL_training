# MySQL Practice Exercises: Useful Functions (Exercise 37-39)

## 初期設定

以下のデータベース、テーブル、初期データが用意されているものとします。

### データベースとテーブルの作成

```sql
CREATE DATABASE company;

USE company;

CREATE TABLE employees (
    id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    hire_date DATE,
    salary DECIMAL(10, 2)
);
```

### 初期データの挿入

```sql
INSERT INTO employees (id, first_name, last_name, hire_date, salary) VALUES
(1, 'John', 'Doe', '2022-01-15', 6000.00),
(2, 'Jane', 'Smith', '2021-11-20', 4500.50),
(3, 'Mike', 'Johnson', '2023-03-10', 5500.75);
```

---

## Exercise 37: 文字列関数 (String Functions)

### 説明

- `CONCAT()`: 文字列を連結します。
- `UPPER()` / `LOWER()`: 大文字/小文字に変換します。
- `LENGTH()`: 文字列の長さをバイト単位で返します。

### 例題

`employees`テーブルから、姓と名を連結したフルネームを大文字で表示し、その名前の長さを表示してください。

#### 解答例

```sql
SELECT
    UPPER(CONCAT(first_name, ' ', last_name)) AS full_name,
    LENGTH(CONCAT(first_name, ' ', last_name)) AS name_length
FROM employees;
```

---

## Exercise 38: 日付/時刻関数 (Date/Time Functions)

### 説明

- `NOW()`: 現在の日時を返します。
- `YEAR()`: 日付から年を抽出します。
- `DATE_FORMAT()`: 日付を指定した書式に変換します。

### 例題

`employees`テーブルから、各従業員の入社年と、`MM/DD/YYYY`形式の入社年月日を表示してください。

#### 解答例

```sql
SELECT
    name,
    YEAR(hire_date) AS hire_year,
    DATE_FORMAT(hire_date, '%m/%d/%Y') AS formatted_hire_date
FROM employees;
```

---

## Exercise 39: 数値関数 (Numeric Functions)

### 説明

- `ROUND()`: 四捨五入します。
- `CEIL()`: 切り上げます。
- `FLOOR()`: 切り捨てます。

### 例題

`employees`テーブルの給与を四捨五入、切り上げ、切り捨てした結果をそれぞれ表示してください。

#### 解答例

```sql
SELECT
    name,
    salary,
    ROUND(salary) AS rounded_salary,
    CEIL(salary) AS ceil_salary,
    FLOOR(salary) AS floor_salary
FROM employees;
```

---
