SELECT customers.company_name, CONCAT(first_name, ' ', last_name)
FROM orders AS o
JOIN customers USING(customer_id)
JOIN employees USING(employee_id)
JOIN shippers AS s ON o.ship_via = s.shipper_id
WHERE customers.city = 'London' AND employees.city = 'London' AND s.company_name = 'Speedy Express';

SELECT product_name, units_in_stock, suppliers.contact_name, suppliers.phone
FROM products
JOIN categories USING(category_id)
JOIN suppliers USING(supplier_id)
WHERE discontinued <> 1 AND category_name IN ('Beverages', 'Seafood') AND units_in_stock < 20
ORDER BY units_in_stock;

SELECT customers.contact_name, orders.order_id
FROM customers
LEFT JOIN orders USING(customer_id)
WHERE order_id IS NULL
ORDER BY contact_name;
