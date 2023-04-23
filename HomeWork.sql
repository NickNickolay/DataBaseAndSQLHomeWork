CREATE DATABASE IF NOT EXISTS HomeWork1;
USE HomeWork1;
DROP TABLE IF EXISTS tel;
CREATE TABLE tel
(
id INT PRIMARY KEY AUTO_INCREMENT,
Productname VARCHAR(45),
Manufacturer VARCHAR(45),
ProductCount int,
Price int
);
INSERT tel (Productname, Manufacturer, ProductCount, Price)
VALUES
("iPhone X", "Apple", 3, 76000), -- id = 1
("iPhone 8", "Apple", 2, 51000), -- id = 2
("Galaxy S9", "Samsung", 2,56000), -- id = 3
("Galaxy S8", "Samsung", 1, 41000), -- id = 4
("P20 Pro", "Huawei", 5, 36000); -- id = 5

SELECT * FROM tel;

SELECT Productname, Manufacturer, ProductCount
FROM tel
WHERE ProductCount > 2;

SELECT Productname, ProductCount, Price
FROM tel
WHERE Manufacturer = "Samsung";

SELECT Productname, Manufacturer, ProductCount, Price
FROM tel
WHERE ProductCount * Price BETWEEN 100000 AND 145000;

SELECT id,Productname, Manufacturer, ProductCount, Price
FROM tel
WHERE Productname LIKE "iPhone%";

SELECT id,Productname, Manufacturer, ProductCount, Price
FROM tel
WHERE Productname LIKE "Galaxy%";

SELECT id,Productname, Manufacturer, ProductCount, Price
FROM tel
WHERE Productname RLIKE "[:digit:]";

SELECT id,Productname, Manufacturer, ProductCount, Price
FROM tel
WHERE Productname LIKE "%8%";