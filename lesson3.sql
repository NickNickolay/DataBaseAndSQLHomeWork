CREATE DATABASE IF NOT EXISTS lesson3;
USE lesson3;
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

INSERT staff(firstname, lastname, post, seniority, salary, age)
VALUES ("Петр", "Петров", "Начальник", 8, 70000, 30);

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
ORDER BY firstname DESC, lastname DESC; 

SELECT firstname, lastname, salary
FROM staff
ORDER BY salary DESC
LIMIT 5; 


SELECT
	post AS "Должности",
	SUM(salary) AS "Суммарная ЗП",
    COUNT(salary) AS "Количество сотрудников по должности",
    MAX(salary) AS "Макс ЗП",
    MIN(salary) AS "Мин ЗП",
    MAX(salary) - MIN(salary) AS "Разница между макс и мин ЗП внутри должности",
    AVG(salary) AS "Средняя ЗП по должности"
FROM staff
WHERE post != "Уборщик"
GROUP BY post
HAVING AVG(salary) > 30000;


