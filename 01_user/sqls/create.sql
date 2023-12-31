CREATE DATABASE IF NOT EXISTS example;

CREATE TABLE example.user(
     id VARCHAR(100) PRIMARY KEY,
     name VARCHAR (100),
     age INT
);

# Todo. 비밀번호
CREATE USER 'dba'@'%' IDENTIFIED BY 'dba';
GRANT ALL PRIVILEGES ON *.* TO 'dba'@'%';

CREATE USER 'dev'@'%' IDENTIFIED BY 'dev';
GRANT ALL PRIVILEGES ON *.* TO 'dev'@'%';

REVOKE CREATE, DROP, ALTER ON *.* FROM 'dev'@'%';