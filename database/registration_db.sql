CREATE DATABASE registration_db;
USE registration_db;
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(10),
    name VARCHAR(100),
    email VARCHAR(100),
    year INT
);
select * from users;
