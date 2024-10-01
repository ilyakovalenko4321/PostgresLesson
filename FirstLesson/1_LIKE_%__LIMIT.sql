SELECT employees.last_name, employees.first_name
FROM employees
WHERE first_name LIKE '%n_';

SELECT product_name, unit_price
FROM products
LIMIT 10;

SELECT COUNT(*)
FROM orders
WHERE ship_region IS NOT NULL;