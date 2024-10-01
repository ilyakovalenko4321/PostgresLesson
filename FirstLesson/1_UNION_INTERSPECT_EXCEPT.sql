/*Объединение*/
SELECT country
FROM customers
UNION
SELECT country
FROM employees;

SELECT country
FROM customers
UNION ALL
SELECT country
FROM employees;


/*Пересечение*/
SELECT country
FROM customers
INTERSECT
SELECT country
FROM suppliers;

/*Разница*/
SELECT country
FROM customers
EXCEPT
SELECT country
FROM suppliers;

/*Разница с учетом дубликатов*/
SELECT country
FROM customers
EXCEPT ALL
SELECT country
FROM suppliers;