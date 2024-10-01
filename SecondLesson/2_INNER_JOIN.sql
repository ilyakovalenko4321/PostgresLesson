SELECT product_name, company_name, units_in_stock
FROM products
INNER JOIN suppliers ON products.supplier_id = suppliers.supplier_id
ORDER BY units_in_stock DESC;

SELECT category_name, SUM(units_in_stock)
FROM products
INNER JOIN categories ON products.category_id = categories.category_id
GROUP BY category_name
ORDER BY SUM(units_in_stock) DESC;

SELECT categories.category_name, SUM(products.unit_price*products.units_in_stock)
FROM products
INNER JOIN categories ON products.category_id = categories.category_id
WHERE discontinued <> 1
GROUP BY categories.category_name
HAVING SUM(products.unit_price*products.units_in_stock) > 5000
ORDER BY SUM(products.unit_price*products.units_in_stock) DESC;

SELECT order_id, customer_id, first_name, last_name, title
FROM orders
INNER JOIN employees on orders.employee_id = employees.employee_id