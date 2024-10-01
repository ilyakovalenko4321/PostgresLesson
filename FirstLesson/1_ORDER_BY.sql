SELECT DISTINCT country
FROM customers
ORDER BY country DESC;

SELECT DISTINCT customers.country, customers.city
FROM customers
ORDER BY country DESC, city DESC