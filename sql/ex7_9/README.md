# MySQL Practice Exercises (Exercise 7-9)

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

## Exercise 7: 並び替え（ORDER BY）

### 説明

`ORDER BY`を使うと、検索結果を昇順または降順に並び替えることができます。

### 文法

```sql
SELECT * FROM テーブル名
ORDER BY カラム名 ASC; -- 昇順

SELECT * FROM テーブル名
ORDER BY カラム名 DESC; -- 降順
```

### 例題

`employees`テーブルの従業員を給与の高い順に並び替えて表示してください。

#### 解答例

```sql
SELECT * FROM employees
ORDER BY salary DESC;
```

---

## Exercise 8: 特定の件数取得（LIMIT）

### 説明

`LIMIT`を使うと、表示する件数を制限することができます。

### 文法

```sql
SELECT * FROM テーブル名
LIMIT 件数;

SELECT * FROM テーブル名
ORDER BY カラム名 DESC
LIMIT 件数;
```

### 例題

給与の高い順で上位2名の従業員を表示してください。

#### 解答例

```sql
SELECT * FROM employees
ORDER BY salary DESC
LIMIT 2;
```

---

## Exercise 9: 別名（AS）

### 説明

`AS`を使うと、列名やテーブル名に別名を付けることができます。

### 文法

```sql
SELECT カラム名 AS 別名 FROM テーブル名;

SELECT カラム1 AS 別名1, カラム2 AS 別名2 FROM テーブル名;
```

### 例題

`employees`テーブルの`name`を「従業員名」、`salary`を「給与」として表示してください。

#### 解答例

```sql
SELECT name AS 従業員名, salary AS 給与 FROM employees;
```

---

（このファイルはMarkdown形式です）
