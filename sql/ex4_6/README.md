# MySQL Practice Exercises (Exercise 4-6)

## 初期設定

以下のテーブルとデータが事前に用意されているものとします。

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
(1, 'John Doe', 'Sales', 5000),
(2, 'Jane Smith', 'HR', 4500),
(3, 'Mike Johnson', 'Sales', 5500);
```

---

## Exercise 4: データの更新（UPDATE）

### 説明

MySQLでは、`UPDATE`文を使用してテーブル内のデータを更新します。

### 文法

```sql
UPDATE テーブル名
SET カラム名 = 新しい値
WHERE 条件;
```

### 例題

`employees`テーブルにおいて、`id`が1の従業員の給料を6000に更新してください。

#### 解答例

```sql
UPDATE employees
SET salary = 6000
WHERE id = 1;
```

---

## Exercise 5: データの削除（DELETE）

### 説明

MySQLでは、`DELETE`文を使用してテーブルからデータを削除します。

### 文法

```sql
DELETE FROM テーブル名
WHERE 条件;
```

### 例題

`employees`テーブルから`id`が2の従業員のデータを削除してください。

#### 解答例

```sql
DELETE FROM employees
WHERE id = 2;
```

---

## Exercise 6: 複数条件の検索（AND / OR）

### 説明

MySQLでは、`AND`や`OR`を使うことで複数の条件を指定して検索することができます。

### 文法

```sql
SELECT * FROM テーブル名
WHERE 条件1 AND 条件2;

SELECT * FROM テーブル名
WHERE 条件1 OR 条件2;
```

### 例題

`employees`テーブルから、「部署が'Sales'かつ給与が6000以上」の従業員を検索してください。

#### 解答例

```sql
SELECT * FROM employees
WHERE department = 'Sales' AND salary >= 6000;
```

---

（このファイルはMarkdown形式です）
