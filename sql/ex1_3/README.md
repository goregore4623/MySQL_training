# 📚 MySQL 初心者演習問題集

## 🔰 概要

MySQL初心者向けの学習教材です。各項目に説明・電型・例題・解答をセットで掲載しています。

---

## ✅ Step 1：基本操作を理解しよう

### 1-1. データベースの作成

#### 🔸 説明

データベースはデータを管理する「盾」です。

#### 🔹 基本構文（電型）

```sql
CREATE DATABASE データベース名;
```

#### 🔹 例題

Q. 社員情報を管理するデータベース `company` を作成しなさい。

#### ✅ 解答

```sql
CREATE DATABASE company;
```

---

### 1-2. テーブルの作成

#### 🔸 説明

テーブルはデータを入れる「表」です。各列にデータ型を指定します。

#### 🔹 基本構文（電型）

```sql
CREATE TABLE テーブル名 (
    カラム名 データ型 制約,
    カラム名 データ型 制約,
    ...
);
```

#### 🔹 例題

Q. 次の項目を持つ社員テーブル `employees` を作成しなさい。

* id：社員ID（整数、自動描番、主キー）
* name：社員名（文字列）
* age：年齢（整数）
* department：部署（文字列）

#### ✅ 解答

```sql
CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    department VARCHAR(100)
);
```

---

### 1-3. データの追加（INSERT）

#### 🔸 説明

`INSERT` 文はテーブルにデータを追加する命令です。

#### 🔹 基本構文（電型）

```sql
INSERT INTO テーブル名 (カラム名1, カラム名2, ...) VALUES (値1, 値2, ...);
```

#### 🔹 例題

Q. 次のデータを `employees` テーブルに追加しなさい。

* Alice, 30歳, HR
* Bob, 25歳, Engineering
* Charlie, 28歳, Sales

#### ✅ 解答

```sql
INSERT INTO employees (name, age, department) VALUES ('Alice', 30, 'HR');
INSERT INTO employees (name, age, department) VALUES ('Bob', 25, 'Engineering');
INSERT INTO employees (name, age, department) VALUES ('Charlie', 28, 'Sales');
```

---

### 1-4. データの表示（SELECT）

#### 🔸 説明

`SELECT` 文はテーブルからデータを検索・表示する命令です。

#### 🔹 基本構文（電型）

```sql
SELECT カラム名1, カラム名2, ... FROM テーブル名;
-- すべてのデータを表示したいときは「*」
SELECT * FROM テーブル名;
```

#### 🔹 例題

Q. `employees` テーブルの全データを表示しなさい。

#### ✅ 解答

```sql
SELECT * FROM employees;
```

---

## ✅ Step 2：データの検索・更新・削除

### 2-1. 条件付き検索（WHERE）

#### 🔸 説明

`WHERE` 句を使うと、特定の条件に合うデータを検索できます。

#### 🔹 基本構文（電型）

```sql
SELECT カラム名 FROM テーブル名 WHERE 条件;
```

#### 🔹 例題

Q. `employees` テーブルから `Engineering` 部署の社員を検索しなさい。

#### ✅ 解答

```sql
SELECT * FROM employees WHERE department = 'Engineering';
```

---

### 2-2. データの更新（UPDATE）

#### 🔸 説明

`UPDATE` 文は、既存データを変更する命令です。

#### 🔹 基本構文（電型）

```sql
UPDATE テーブル名 SET カラム名 = 新しい値 WHERE 条件;
```

#### 🔹 例題

Q. Bobさんの年齢を26歳に更新しなさい。

#### ✅ 解答

```sql
UPDATE employees SET age = 26 WHERE name = 'Bob';
```

---

### 2-3. データの削除（DELETE）

#### 🔸 説明

`DELETE` 文はデータを削除する命令です。

#### 🔹 基本構文（電型）

```sql
DELETE FROM テーブル名 WHERE 条件;
```

#### 🔹 例題

Q. Charlieさんのデータを削除しなさい。

#### ✅ 解答

```sql
DELETE FROM employees WHERE name = 'Charlie';
```

---

## ✅ Step 3：並び替え・集計・結合

### 3-1. 並び替え（ORDER BY）

#### 🔸 説明

`ORDER BY` 句を使うと、データを指定した順に並び替えできます。

#### 🔹 基本構文（電型）

```sql
SELECT * FROM テーブル名 ORDER BY カラム名 ASC;  -- 昇順
SELECT * FROM テーブル名 ORDER BY カラム名 DESC; -- 降順
```

#### 🔹 例題

Q. 社員データを年齢が高い順に並び替えて表示しなさい。

#### ✅ 解答

```sql
SELECT * FROM employees ORDER BY age DESC;
```

---

### 3-2. 件数の集計（COUNT）

#### 🔸 説明

`COUNT` 関数は、データの件数を集計するときに使います。

#### 🔹 基本構文（電型）

```sql
SELECT COUNT(*) FROM テーブル名;
```

#### 🔹 例題

Q. `employees` テーブルの社員数を表示しなさい。

#### ✅ 解答

```sql
SELECT COUNT(*) FROM employees;
```

---

### 3-3. グループごとの集計（GROUP BY）

#### 🔸 説明

`GROUP BY` は、データをグループ化して集計したいときに使います。

#### 🔹 基本構文（電型）

```sql
SELECT カラム名, 集計関数 FROM テーブル名 GROUP BY カラム名;
```

####
