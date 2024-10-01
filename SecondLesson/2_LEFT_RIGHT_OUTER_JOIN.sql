/*Не может вывести с Null потому что обязательно будет соответствие*/
SELECT company_name, order_id
FROM customers
JOIN orders ON orders.customer_id = customers.customer_id
WHERE order_id IS NULL;

SELECT company_name, order_id
FROM customers
LEFT JOIN orders ON orders.customer_id = customers.customer_id
WHERE order_id IS NULL;

SELECT last_name, order_id
FROM employees
LEFT JOIN orders ON orders.employee_id = employees.employee_id;

SELECT first_name, last_name, COUNT(order_id)
FROM employees
LEFT JOIN orders ON orders.employee_id = employees.employee_id
GROUP BY first_name, last_name
ORDER BY COUNT(order_id) DESC;