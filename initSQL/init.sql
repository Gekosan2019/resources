DROP TABLE IF EXISTS appDB;
CREATE DATABASE IF NOT EXISTS appDB;
CREATE USER IF NOT EXISTS 'user'@'%' IDENTIFIED BY 'password';
GRANT SELECT,UPDATE,INSERT,DELETE ON appDB.* TO 'user'@'%';
FLUSH PRIVILEGES;

USE appDB;
CREATE TABLE IF NOT EXISTS students (
  ID INT(11) NOT NULL AUTO_INCREMENT,
  name VARCHAR(20) NOT NULL,
  surname VARCHAR(40) NOT NULL,
  class INT(1) NOT NULL,
  phone_num VARCHAR(11) NOT NULL,
  PRIMARY KEY (ID)
);

INSERT INTO students (name, surname, class, phone_num)
SELECT * FROM (SELECT 'Alex', 'Rover', 1, '89646553012') AS tmp
WHERE NOT EXISTS (
    SELECT name FROM students WHERE name = 'Alex' AND surname = 'Rover'
) LIMIT 1;

INSERT INTO students (name, surname, class, phone_num)
SELECT * FROM (SELECT 'Shamil', 'Shundalov', 1, '89618141135') AS tmp
WHERE NOT EXISTS (
    SELECT name FROM students WHERE name = 'Bob' AND surname = 'Marley'
) LIMIT 1;

INSERT INTO students (name, surname, class, phone_num)
SELECT * FROM (SELECT 'Misha', 'Lazarev', 3, '87553182098') AS tmp
WHERE NOT EXISTS (
    SELECT name FROM students WHERE name = 'Alex' AND surname = 'Rover'
) LIMIT 1;

INSERT INTO students (name, surname, class, phone_num)
SELECT * FROM (SELECT 'Kate', 'Yandson', 4, '89618132235') AS tmp
WHERE NOT EXISTS (
    SELECT name FROM students WHERE name = 'Kate' AND surname = 'Yandson'
) LIMIT 1;

INSERT INTO students (name, surname, class, phone_num)
SELECT * FROM (SELECT 'Lilo', 'Black', 2, '89553180805') AS tmp
WHERE NOT EXISTS (
    SELECT name FROM students WHERE name = 'Lilo' AND surname = 'Black'
) LIMIT 1;