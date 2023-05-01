CREATE DATABASE IF NOT EXISTS Home3;
USE Home3;
DROP TABLE IF EXISTS staff;
CREATE TABLE staff
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    firstname VARCHAR(45),
    lastname VARCHAR(45),
    post VARCHAR(45),
    seniority INT,
    salary DECIMAL(8,2),
    age INT
);


INSERT staff (firstname, lastname, post, seniority, salary, age)
VALUES
  ('Вася', 'Петров', 'Начальник', 40, 100000, 60),
  ('Петр', 'Власов', 'Начальник', 8, 70000, 30),
  ('Катя', 'Катина', 'Инженер', 2, 70000, 25),
  ('Саша', 'Сасин', 'Инженер', 12, 50000, 35),
  ('Иван', 'Петров', 'Рабочий', 40, 30000, 59),
  ('Петр', 'Петров', 'Рабочий', 20, 55000, 60),
  ('Сидр', 'Сидоров', 'Рабочий', 10, 20000, 35),
  ('Антон', 'Антонов', 'Рабочий', 8, 19000, 28),
  ('Юрий', 'Юрков', 'Рабочий', 5, 15000, 25),
  ('Максим', 'Петров', 'Рабочий', 2, 11000, 19),
  ('Юрий', 'Петров', 'Рабочий', 3, 12000, 24),
  ('Людмила', 'Маркина', 'Уборщик', 10, 10000, 49);
SELECT *
FROM staff;

SELECT firstname, lastname, salary
FROM staff
ORDER BY salary DESC;

SELECT firstname, lastname, salary
FROM staff
ORDER BY salary DESC;

SELECT firstname, lastname, salary
FROM staff
ORDER BY firstname DESC, lastname DESC; 

SELECT firstname, lastname, salary
FROM staff
ORDER BY salary DESC
LIMIT 5; 


SELECT
	post AS "Должности",
	SUM(salary) AS "Суммарная ЗП"
   
FROM staff
GROUP BY post;

SELECT COUNT(*)
FROM staff
WHERE post = "Рабочий"
GROUP BY 24 < age < 49;

SELECT COUNT(DISTINCT post) 
FROM staff;

SELECT 
	post AS "Должности",
    AVG(age) AS "Средний возраст"
FROM staff
GROUP BY post
HAVING AVG(age) > 30;

 


 

