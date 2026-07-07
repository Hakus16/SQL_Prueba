INSERT INTO cities (name) VALUES ('');

INSERT INTO customers (name) VALUES ('SuperRiwi');

INSERT INTO distribution_centers (name) VALUES () ;

INSERT INTO categories (name) VALUES ();

INSERT INTO products (name, category_id, unitary_price, stock) 
VALUES 
();

INSERT INTO orders (id, customer_id, city_id, distribution_centers_id, date_order)
VALUES ();

INSERT INTO order_details (order_id, product_id, quantity, historical_price)
VALUES 
(),
();

UPDATE products 
SET stock = stock - 2 
WHERE id = 1;

INSERT INTO categories (name) VALUES ('Wrong Category');

DELETE FROM categories 
WHERE name = 'Wrong Category';
