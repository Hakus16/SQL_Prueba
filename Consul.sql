SELECT name, stock 
FROM products;

SELECT cities.name AS city_name, COUNT(orders.id) AS total_orders
FROM orders
INNER JOIN cities ON orders.city_id = cities.id
GROUP BY cities.name;

SELECT categories.name AS category_name, SUM(order_details.quantity * order_details.historical_price) AS total_sales
FROM order_details
INNER JOIN products ON order_details.product_id = products.id
INNER JOIN categories ON products.category_id = categories.id
GROUP BY categories.name;

SELECT name, stock 
FROM products 
ORDER BY stock ASC;

SELECT customers.name AS customer_name, COUNT(orders.id) AS total_orders
FROM orders
INNER JOIN customers ON orders.customer_id = customers.id
GROUP BY customers.name
ORDER BY total_orders DESC;

SELECT distribution_centers.name AS center_name, SUM(order_details.quantity * order_details.historical_price) AS inventory_value
FROM orders
INNER JOIN order_details ON orders.id = order_details.order_id
INNER JOIN distribution_centers ON orders.distribution_centers_id = distribution_centers.id
GROUP BY distribution_centers.name;
