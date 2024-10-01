SELECT country, city
FROM employees;

SELECT COUNT(*)
FROM orders;

SELECT COUNT(DISTINCT country)
FROM employees;

SELECT *
FROM orders
WHERE order_date>'1998-03-01';
