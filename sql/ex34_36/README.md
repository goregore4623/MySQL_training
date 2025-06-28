# MySQL Practice Exercises: Data Types and Constraints (Exercise 34-36)

## 初期設定

以下のデータベースとテーブルが用意されているものとします。

### データベースの作成

```sql
CREATE DATABASE company;

USE company;
```

---

## Exercise 34: データ型 (Data Types)

### 説明

MySQLには様々なデータ型があります。ここでは`DATE`, `DECIMAL`, `TEXT`を使ってみましょう。

- `DATE`: 日付 (YYYY-MM-DD)
- `DECIMAL(全体の桁数, 小数点以下の桁数)`: 正確な数値を扱う
- `TEXT`: 長い文字列を格納する

### 例題

以下の仕様で`products`テーブルを作成してください。

- `id`: INT, PRIMARY KEY, AUTO_INCREMENT
- `name`: VARCHAR(100)
- `price`: DECIMAL(10, 2)
- `description`: TEXT
- `release_date`: DATE

#### 解答例

```sql
CREATE TABLE products (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    price DECIMAL(10, 2),
    description TEXT,
    release_date DATE
);
```

---

## Exercise 35: NOT NULL制約

### 説明

`NOT NULL`制約は、そのカラムに必ず値が入ることを保証します。NULLを許容しません。

### 例題

`products`テーブルの`name`と`price`カラムに`NOT NULL`制約を追加してください。

#### 解答例

```sql
ALTER TABLE products MODIFY name VARCHAR(100) NOT NULL;
ALTER TABLE products MODIFY price DECIMAL(10, 2) NOT NULL;
```

---

## Exercise 36: UNIQUE制約とDEFAULT制約

### 説明

- `UNIQUE`制約: カラム内の値が全て一意であることを保証します。
- `DEFAULT`制約: データ挿入時に値が指定されなかった場合に、自動的に設定されるデフォルト値を指定します。

### 例題

`products`テーブルの`name`に`UNIQUE`制約を追加し、`release_date`に`DEFAULT`で現在の日付が設定されるようにしてください。

#### 解答例

```sql
ALTER TABLE products ADD UNIQUE (name);
ALTER TABLE products MODIFY release_date DATE DEFAULT (CURRENT_DATE);
```

---