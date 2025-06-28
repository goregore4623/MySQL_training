# MySQL Practice Exercises: Transaction Management (Exercise 43-45)

## 初期設定

以下のデータベースとテーブルが用意されているものとします。

### データベースとテーブルの作成

```sql
CREATE DATABASE bank;

USE bank;

CREATE TABLE accounts (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    balance INT
);
```

### 初期データの挿入

```sql
INSERT INTO accounts (id, name, balance) VALUES
(1, 'Alice', 1000),
(2, 'Bob', 2000);
```

---

## Exercise 43: トランザクションの開始 (START TRANSACTION)

### 説明

トランザクションは、一連の処理を1つの単位としてまとめる機能です。`START TRANSACTION`でトランザクションを開始します。

### 例題

Aliceの残高を500減らし、Bobの残高を500増やすという一連の処理をトランザクションとして開始してください。

#### 解答例

```sql
START TRANSACTION;

UPDATE accounts SET balance = balance - 500 WHERE id = 1;
UPDATE accounts SET balance = balance + 500 WHERE id = 2;
```

---

## Exercise 44: トランザクションの確定 (COMMIT)

### 説明

`COMMIT`は、トランザクション内の全ての変更をデータベースに恒久的に反映します。

### 例題

Exercise 43のトランザクションを確定してください。

#### 解答例

```sql
COMMIT;
```

---

## Exercise 45: トランザクションの取り消し (ROLLBACK)

### 説明

`ROLLBACK`は、トランザクション内の全ての変更を取り消し、トランザクション開始前の状態に戻します。

### 例題

新たにトランザクションを開始し、Aliceの残高を1000減らす操作を行った後、その操作を取り消してください。

#### 解答例

```sql
START TRANSACTION;

UPDATE accounts SET balance = balance - 1000 WHERE id = 1;

ROLLBACK;
```

---
