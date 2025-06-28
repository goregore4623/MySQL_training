# MySQL Practice Exercises: User Management and Privileges (Exercise 46-48)

## 初期設定

この演習では、rootユーザーでMySQLに接続していることを前提とします。

---

## Exercise 46: ユーザーの作成 (CREATE USER)

### 説明

`CREATE USER`文を使用して、新しいデータベースユーザーを作成します。

### 文法

```sql
CREATE USER 'ユーザー名'@'ホスト名' IDENTIFIED BY 'パスワード';
```

### 例題

`new_user`という名前のユーザーを、パスワード`password`で作成してください。ホストは`localhost`とします。

#### 解答例

```sql
CREATE USER 'new_user'@'localhost' IDENTIFIED BY 'password';
```

---

## Exercise 47: 権限の付与 (GRANT)

### 説明

`GRANT`文を使用して、ユーザーに特定のデータベースやテーブルに対する操作権限を付与します。

### 文法

```sql
GRANT 権限 ON データベース名.テーブル名 TO 'ユーザー名'@'ホスト名';
```

### 例題

`new_user`に`company`データベースの全てのテーブルに対する`SELECT`権限を付与してください。

#### 解答例

```sql
GRANT SELECT ON company.* TO 'new_user'@'localhost';
```

---

## Exercise 48: 権限の剥奪 (REVOKE)

### 説明

`REVOKE`文を使用して、ユーザーから権限を剥奪します。

### 文法

```sql
REVOKE 権限 ON データベース名.テーブル名 FROM 'ユーザー名'@'ホスト名';
```

### 例題

`new_user`から`company`データベースの`SELECT`権限を剥奪してください。

#### 解答例

```sql
REVOKE SELECT ON company.* FROM 'new_user'@'localhost';
```

---
