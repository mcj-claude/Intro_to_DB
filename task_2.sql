-- Create all tables in alx_book_store database
-- Database name will be passed as argument

-- Create Authors table
CREATE TABLE authors (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(215)
);

-- Create Books table
CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(130),
    author_id INT,
    price DOUBLE,
    publication_date DATE
);

-- Create Customers table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
);

-- Create Orders table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE
);

-- Create Order_Details table
CREATE TABLE order_details (
    orderdetailid INT PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantity DOUBLE
);