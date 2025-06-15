USE social_media_platform;

-- Users.csvのデータをインポート
LOAD DATA INFILE '/var/lib/mysql-files/users.csv'
INTO TABLE Users
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Posts.csvのデータをインポート
LOAD DATA INFILE '/var/lib/mysql-files/posts.csv'
INTO TABLE Posts
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Comments.csvのデータをインポート
LOAD DATA INFILE '/var/lib/mysql-files/comments.csv'
INTO TABLE Comments
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
