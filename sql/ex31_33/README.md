# MySQL Practice Exercises: Advanced Joins (Exercise 31-33)

## 初期設定

以下のデータベース、テーブル、初期データが用意されているものとします。

### データベースとテーブルの作成

```sql
CREATE DATABASE company;

USE company;

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    manager_id INT
);

CREATE TABLE departments (
    id INT PRIMARY KEY,
    department_name VARCHAR(50),
    employee_id INT
);
```

### 初期データの挿入

```sql
INSERT INTO employees (id, name, manager_id) VALUES
(1, 'John Doe', NULL),
(2, 'Jane Smith', 1),
(3, 'Mike Johnson', 1),
(4, 'Emily Davis', 2);

INSERT INTO departments (id, department_name, employee_id) VALUES
(1, 'Sales', 1),
(2, 'HR', 2),
(3, 'IT', 3),
(4, 'Marketing', NULL);
```

---

## Exercise 31: RIGHT JOIN

### 説明

`RIGHT JOIN`は、右側のテーブルの全てのデータと、条件に一致する左側のテーブルのデータを取得します。左側のデータが存在しない場合はNULLが返されます。

### 文法

```sql
SELECT A.カラム名, B.カラム名
FROM テーブルA AS A
RIGHT JOIN テーブルB AS B
ON A.結合キー = B.結合キー;
```

### 例題

`employees`テーブルと`departments`テーブルを右外部結合し、従業員が割り当てられていない部署も表示してください。

#### 解答例

```sql
SELECT e.name, d.department_name
FROM employees e
RIGHT JOIN departments d ON e.id = d.employee_id;
```

---

## Exercise 32: SELF JOIN

### 説明

`SELF JOIN`は、同じテーブルを別名（エイリアス）を使って結合する方法です。自己参照する関係（例：従業員とその上司）を扱う際に便利です。

### 文法

```sql
SELECT A.カラム名, B.カラム名
FROM テーブル名 AS A
JOIN テーブル名 AS B ON A.結合キー = B.カラム名;
```

### 例題

`employees`テーブルを自己結合し、各従業員とその上司の名前を表示してください。

#### 解答例

```sql
SELECT e1.name AS employee_name, e2.name AS manager_name
FROM employees e1
JOIN employees e2 ON e1.manager_id = e2.id;
```

---

## Exercise 33: CROSS JOIN

### 説明

`CROSS JOIN`は、2つのテーブルの全ての行の組み合わせ（総当たり）を生成します。`WHERE`句を省略した`INNER JOIN`と同じ結果になります。

### 文法

```sql
SELECT *
FROM テーブルA
CROSS JOIN テーブルB;
```

### 例題

`employees`テーブルと`departments`テーブルをクロス結合し、全ての従業員と部署の組み合わせを表示してください。

#### 解答例

```sql
SELECT e.name, d.department_name
FROM employees e
CROSS JOIN departments d;
```

---