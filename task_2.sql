
CREATE DATABASE alx_book_store;


USE alx_book_store;


CREATE TABLE books (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    author_id INT,
    category VARCHAR(50),
    price DECIMAL(10, 2),
    quantity INT
);

CREATE TABLE authors (
    id INT PRIMARY KEY AUTO_INCREMENT,
    author_name VARCHAR(255) NOT NULL
);

CREATE TABLE customers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE,
    address TEXT
);

CREATE TABLE orders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2)
);

CREATE TABLE order_details (
    id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    book_id INT,
    quantity INT,
    price DECIMAL(10, 2)
);

ALTER TABLE books ADD FOREIGN KEY (author_id) REFERENCES authors(id);
ALTER TABLE orders ADD FOREIGN KEY (customer_id) REFERENCES customers(id);
ALTER TABLE order_details ADD FOREIGN KEY (order_id) REFERENCES orders(id);
ALTER TABLE order_details ADD FOREIGN KEY (book_id) REFERENCES books(id);