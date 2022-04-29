-- DROP DATABASE IF EXISTS Social_Media_DB
-- CREATE DATABASE Social_Media_DB;
-- USE social_media_db;
CREATE TABLE user_data(
username_id int not null auto_increment,
first_name varchar(20) not null,
last_name varchar(20) not null,
email varchar(50) not null, 
password varchar(20) not null,
primary key(username_id)
);
CREATE TABLE post_data(
username_id int not null,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
FOREIGN KEY(username_id) REFERENCES user_data(username_id)
);
CREATE TABLE comment_data(
username_id int not null,
comment varchar(100),
FOREIGN KEY(username_id) REFERENCES user_data(username_id)

);
