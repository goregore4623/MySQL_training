# Docker で MySQL 学習環境

このリポジトリは、MySQLの学習環境をDockerで簡単に構築するためのものです。

---
## 事前準備
- [Docker](https://www.docker.com/ja-jp/)のインストール
- このレポジトリをclone

## 手順

1. **コンテナの起動**
    ```sh
    docker compose up -d
    ```
    - バックグラウンドでコンテナを起動します。

2. **MySQLコンテナに接続**
    ```sh
    docker exec -it my_sql_learning mysql -u root -p
    # または
    # docker exec -it <コンテナ名> mysql -u root -p
    ```
    - `-p`はパスワード入力を促します。
    - パスワードは`docker-compose.yml`の`MYSQL_ROOT_PASSWORD`で設定したものを入力してください。

3. **動作確認**
    ```sql
    SOURCE /sql/test.sql
    ```
    - 上記コマンドを実行し、`COUNT 100000`と表示されれば成功です。

4. **SQLファイルの編集・実行**
    - ローカルの`./sql/`ディレクトリにSQLファイルを配置・編集してください。
    - これらのファイルはDockerコンテナ内と同期されており、すぐに実行できます。

---

## MySQLで使える主なコマンド

- データベース一覧の表示
    ```sql
    SHOW DATABASES;
    ```
- データベースの作成
    ```sql
    CREATE DATABASE <データベース名>;
    ```
- データベースの選択
    ```sql
    USE <データベース名>;
    ```
- テーブル一覧の表示
    ```sql
    SHOW TABLES;
    ```
- テーブル構造の確認
    ```sql
    DESCRIBE <テーブル名>;
    -- または
    SHOW COLUMNS FROM <テーブル名>;
    ```
- テーブルの作成
    ```sql
    CREATE TABLE <テーブル名> (
        カラム名1 データ型1,
        カラム名2 データ型2,
        ...
    );
    ```
- データの挿入
    ```sql
    INSERT INTO <テーブル名> (カラム1, カラム2) VALUES (値1, 値2);
    ```
- データの更新
    ```sql
    UPDATE <テーブル名> SET カラム名 = 新しい値 WHERE 条件;
    ```
- データの削除
    ```sql
    DELETE FROM <テーブル名> WHERE 条件;
    ```
- データの検索
    ```sql
    SELECT * FROM <テーブル名> WHERE 条件;
    ```
- データ件数の確認
    ```sql
    SELECT COUNT(*) FROM <テーブル名>;
    ```
- データの一部を表示（例：先頭10件）
    ```sql
    SELECT * FROM <テーブル名> LIMIT 10;
    ```
- データの並び替え
    ```sql
    SELECT * FROM <テーブル名> ORDER BY カラム名 ASC;  -- 昇順
    SELECT * FROM <テーブル名> ORDER BY カラム名 DESC; -- 降順
    ```
- 重複を除外して表示
    ```sql
    SELECT DISTINCT カラム名 FROM <テーブル名>;
    ```
- テーブルの結合
    ```sql
    SELECT * FROM テーブル1 
    INNER JOIN テーブル2 ON テーブル1.カラム = テーブル2.カラム;
    ```
- グループ化と集計
    ```sql
    SELECT カラム名, COUNT(*) 
    FROM <テーブル名> 
    GROUP BY カラム名;
    ```
- インデックスの作成
    ```sql
    CREATE INDEX インデックス名 ON <テーブル名>(カラム名);
    ```
- ユーザー一覧の表示
    ```sql
    SELECT user, host FROM mysql.user;
    ```
- 現在のデータベースを確認
    ```sql
    SELECT DATABASE();
    ```
- 現在のMySQLバージョンを確認
    ```sql
    SELECT VERSION();
    ```
- テーブルの最適化
    ```sql
    OPTIMIZE TABLE <テーブル名>;
    ```
- トランザクションの開始
    ```sql
    START TRANSACTION;
    ```
- トランザクションの確定
    ```sql
    COMMIT;
    ```
- トランザクションの取り消し
    ```sql
    ROLLBACK;
    ```

---

## Docker関連コマンド

- **実行中のコンテナ一覧表示**
    ```sh
    docker ps
    ```
- **コンテナの起動**
    ```sh
    docker compose up -d
    ```
- **コンテナの停止**
    ```sh
    docker compose down
    ```
- **コンテナ内でコマンド実行**
    ```sh
    docker exec -it <コンテナ名> <コマンド>
    ```
- **コンテナのログ確認**
    ```sh
    docker logs <コンテナ名 or プロセスID>
    ```
- **コンテナのログをリアルタイムで確認**
    ```sh
    docker logs -f <コンテナ名 or プロセスID>
    ```
- **全てのコンテナ一覧表示（停止中も含む）**
    ```sh
    docker ps -a
    ```
- **再起動**
    ```sh
    docker compose down
    docker compose up -d
    ```
- **コンテナの終了**
    ```sh
    docker stop <コンテナ名 or プロセスID>
    ```
- **コンテナの削除**
    ```sh
    docker rm <コンテナ名 or プロセスID>
    ```
- **イメージ一覧表示**
    ```sh
    docker images
    ```
- **イメージの削除**
    ```sh
    docker rmi <イメージ名 or イメージID>
    ```
- **コンテナのリソース使用状況確認**
    ```sh
    docker stats
    ```
- **Dockerシステムのクリーンアップ**
    ```sh
    docker system prune
    ```

---

## 補足・トラブルシューティング

- `-p`オプションはパスワード入力を促します。
- SQLファイルは`./sql/`ディレクトリに配置してください。
- コンテナ名は`docker ps`で確認できます。
- 何か問題が発生した場合は、コンテナの再起動や削除をお試しください。

---

## 参考文献

- [Qiita: DockerでMySQLの学習環境を構築する](https://qiita.com/hgaiji/items/35573203d9d06c42b671)
- [【初学者向け】DockerでSQL学習環境を構築しよう - ChatGPTを活用してデータ作成](https://zenn.dev/musashi26629/articles/bf2a2eb517adf9)

