USE lesson3;
SELECT * FROM staff;
SELECT
DENSE_RANK() OVER(ORDER BY salary DESC) AS `rank`, -- Буква Ё на англ. раскладке
salary,
post
FROM staff;

SELECT
DENSE_RANK() OVER(PARTITION BY post ORDER BY salary DESC) AS `rank`, -- Буква Ё на англ. раскладке
salary, post, lastname ,firstname
FROM staff;

SELECT 
  salary, post, lastname, firstname
FROM (SELECT
  DENSE_RANK() OVER(PARTITION BY post ORDER BY salary DESC) AS `rank`,
    salary, post, lastname, firstname
FROM staff) AS rank_table
WHERE `rank` = 1
ORDER BY salary; -- ASC по возрастанию

-- Агрегация
-- Вывести всех сотрудников по должностям
-- общую ЗП по долж-ти(1)
-- проц. соотношение отдельно взятой ЗП к суммарной(2)
-- среднюю ЗП (3)
-- проц. соотношение отдельно взятой ЗП к средней (4)

SELECT
salary, post, lastname,firstname,
SUM(salary) OVER w AS sum_post,-- w = (PARTITION BY post)
salary * 100 / SUM(salary) OVER w AS percent_sum,
AVG(salary) OVER w AS avg_post,
salary * 100 / AVG(salary) OVER w AS percent_avg
FROM staff
WINDOW w AS (PARTITION BY post);

-- Представления VIEWS

CREATE OR REPLACE VIEW result AS 
SELECT
  post,
    COUNT(*) AS count_post
FROM staff
GROUP BY post
ORDER BY count_post;

SELECT * FROM result
WHERE post != "Уборщик";