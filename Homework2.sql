CREATE DATABASE IF NOT EXISTS sales;
USE sales;
DROP TABLE IF EXISTS sales1;
CREATE TABLE sales1
(
id INT PRIMARY KEY AUTO_INCREMENT,
order_date DATE,
count_product int
);

INSERT sales1 (order_date, count_product)
VALUES
('2022-01-01', 156),
('2022-01-02', 180),
('2022-01-03', 21),
('2022-01-04', 124),
('2022-01-05', 341);

SELECT id,
CASE
WHEN count_product <100
THEN 'Маленький заказ'
WHEN count_product BETWEEN 100 and 300
THEN 'Средний заказ'
WHEN count_product >300
THEN 'Большой заказ'    
END AS order_type
FROM sales1;

CREATE DATABASE IF NOT EXISTS orders;
USE orders;
DROP TABLE IF EXISTS orders1;
CREATE TABLE orders1
(
id INT PRIMARY KEY AUTO_INCREMENT,
employee_id VARCHAR(15),
amount int,
order_status VARCHAR(15)
);

INSERT orders1 (employee_id, amount, order_status)
VALUES
('e03', 15.00, 'open'),
('e01', 25.50, 'open'),
('e05', 100.70, 'closed'),
('e02', 22.18, 'open'),
('e04', 9.50, 'cancelled');

SELECT *, 
CASE
WHEN order_status = 'open'
THEN 'order is in open state'
WHEN order_status = 'closed'
THEN 'order is closed'
WHEN order_status = 'cancelled'
THEN 'order is cancelled'    
END AS order_type
FROM orders1;

