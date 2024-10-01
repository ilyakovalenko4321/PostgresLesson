SELECT products.category_id, SUM(products.unit_price * products.units_in_stock)
FROM products
WHERE discontinued <> 1
GROUP BY products.category_id
HAVING SUM(unit_price*units_in_stock) > 5000
ORDER BY SUM(unit_price*units_in_stock) DESC;