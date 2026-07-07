CREATE DATABASE bd_Yesid_Palacio_Esthercita;
USE bd_Yesid_Palacio_Esthercita;

CREATE TABLE cities (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE distribution_centers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE categories (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    category_id INT NOT NULL,
    unitary_price DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL,
    CONSTRAINT fk_category_product
        FOREIGN KEY (category_id)
        REFERENCES categories(id)
);

CREATE TABLE orders (
    id VARCHAR(20) PRIMARY KEY,
    customer_id INT NOT NULL,
    city_id INT NOT NULL,
    distribution_centers_id INT NOT NULL,
    date_order DATE NOT NULL,
    CONSTRAINT fk_order_customer
        FOREIGN KEY (customer_id)
        REFERENCES customers(id),
    CONSTRAINT fk_order_city
        FOREIGN KEY (city_id)
        REFERENCES cities(id),
    CONSTRAINT fk_order_center
        FOREIGN KEY (distribution_centers_id)
        REFERENCES distribution_centers(id)
);

CREATE TABLE order_details (
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_id VARCHAR(20) NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    historical_price DECIMAL(10,2) NOT NULL,
    CONSTRAINT fk_detail_order
        FOREIGN KEY (order_id)
        REFERENCES orders(id),
    CONSTRAINT fk_detail_product
        FOREIGN KEY (product_id)
        REFERENCES products(id)
);









