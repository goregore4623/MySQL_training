# MySQL Practice Exercises: Basic Operations (Exercise 1-3)

## 概要

MySQL初心者向けの学習教材です。各項目に説明・電型・例題・解答をセットで掲載しています。

---

## Exercise 1: データベースの作成

### 説明

データベースはデータを管理する「盾」です。

### 文法

```sql
CREATE DATABASE データベース名;
```

### 例題

Q. 社員情報を管理するデータベース `company` を作成しなさい。

#### 解答例

```sql
CREATE DATABASE company;
```

---

## Exercise 2: テーブルの作成

### 説明

テーブルはデータを入れる「表」です。各列にデータ型を指定します。

### 文法

```sql
CREATE TABLE テーブル名 (
    カラム名 データ型 制約,
    カラム名 データ型 制約,
    ...
);
```

### 例題

Q. 次の項目を持つ社員テーブル `employees` を作成しなさい。

* id：社員ID（整数、自動描番、主キー）
* name：社員名（文字列）
* age：年齢（整数）
* department：部署（文字列）

#### 解答例

```sql
CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    department VARCHAR(100)
);
```

---

## Exercise 3: データの追加（INSERT）

### 説明

`INSERT` 文はテーブルにデータを追加する命令です。

### 文法

```sql
INSERT INTO テーブル名 (カラム名1, カラム名2, ...) VALUES (値1, 値2, ...);
```

### 例題

Q. 次のデータを `employees` テーブルに追加しなさい。

* Alice, 30歳, HR
* Bob, 25歳, Engineering
* Charlie, 28歳, Sales

#### 解答例

```sql
INSERT INTO employees (name, age, department) VALUES ('Alice', 30, 'HR');
INSERT INTO employees (name, age, department) VALUES ('Bob', 25, 'Engineering');
INSERT INTO employees (name, age, department) VALUES ('Charlie', 28, 'Sales');
```

---