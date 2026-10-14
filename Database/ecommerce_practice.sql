
CREATE DATABASE ecommerce_practice;
USE ecommerce_practice;

-- Customers
CREATE TABLE customers(
customer_id INT PRIMARY KEY,
name VARCHAR(50),
email VARCHAR(50),
city VARCHAR(50)
);

INSERT INTO customers VALUES
(1,'Ali','ali@gmail.com','Lahore'),
(2,'Ahmed','ahmed@gmail.com','Karachi'),
(3,'Hassan','hassan@gmail.com','Faisalabad'),
(4,'Usman','usman@gmail.com','Multan'),
(5,'Bilal','bilal@gmail.com','Lahore'),
(6,'Zain','zain@gmail.com','Islamabad'),
(7,'Hamza','hamza@gmail.com','Sialkot'),
(8,'Awais','awais@gmail.com','Gujranwala'),
(9,'Saad','saad@gmail.com','Lahore'),
(10,'Tariq','tariq@gmail.com','Peshawar');

-- Categories
CREATE TABLE categories(
category_id INT PRIMARY KEY,
category_name VARCHAR(50)
);

INSERT INTO categories VALUES
(1,'Electronics'),
(2,'Clothing'),
(3,'Shoes'),
(4,'Books'),
(5,'Mobiles'),
(6,'Furniture'),
(7,'Sports'),
(8,'Beauty'),
(9,'Toys'),
(10,'Groceries');

-- Products (with foreign key)
CREATE TABLE products(
product_id INT PRIMARY KEY,
product_name VARCHAR(50),
price INT,
category_id INT,
FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

INSERT INTO products VALUES
(1,'Laptop',120000,1),
(2,'Tshirt',2000,2),
(3,'Running Shoes',8000,3),
(4,'Database Book',1500,4),
(5,'iPhone',200000,5),
(6,'Table',10000,6),
(7,'Football',3000,7),
(8,'Face Wash',900,8),
(9,'Toy Car',1200,9),
(10,'Rice Bag',3500,10);

-- Orders (no FK for LEFT JOIN practice)
CREATE TABLE orders(
order_id INT PRIMARY KEY,
customer_id INT,
order_date DATE
);

INSERT INTO orders VALUES
(1,1,'2026-01-01'),
(2,2,'2026-01-02'),
(3,3,'2026-01-03'),
(4,4,'2026-01-04'),
(5,5,'2026-01-05'),
(6,6,'2026-01-06'),
(7,7,'2026-01-07'),
(8,8,'2026-01-08'),
(9,9,'2026-01-09'),
(10,2,'2026-01-10');

-- Order Items
CREATE TABLE order_items(
item_id INT PRIMARY KEY,
order_id INT,
product_id INT,
quantity INT,
FOREIGN KEY (order_id) REFERENCES orders(order_id),
FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO order_items VALUES
(1,1,1,1),
(2,2,2,2),
(3,3,3,1),
(4,4,4,3),
(5,5,5,1),
(6,6,6,1),
(7,7,7,2),
(8,8,8,1),
(9,9,9,2),
(10,10,10,4);

-- Payments (no FK)
CREATE TABLE payments(
payment_id INT PRIMARY KEY,
order_id INT,
amount INT,
method VARCHAR(20)
);

INSERT INTO payments VALUES
(1,1,120000,'Card'),
(2,2,4000,'Cash'),
(3,3,8000,'Card'),
(4,4,4500,'Cash'),
(5,5,200000,'Card'),
(6,6,10000,'Cash'),
(7,7,6000,'Card'),
(8,8,900,'Cash'),
(9,9,2400,'Card'),
(10,10,14000,'Cash');

-- Shipments
CREATE TABLE shipments(
shipment_id INT PRIMARY KEY,
order_id INT,
status VARCHAR(30)
);

INSERT INTO shipments VALUES
(1,1,'Delivered'),
(2,2,'Shipped'),
(3,3,'Delivered'),
(4,4,'Processing'),
(5,5,'Delivered'),
(6,6,'Shipped'),
(7,7,'Processing'),
(8,8,'Delivered'),
(9,9,'Shipped'),
(10,10,'Processing');

-- Suppliers
CREATE TABLE suppliers(
supplier_id INT PRIMARY KEY,
supplier_name VARCHAR(50),
city VARCHAR(50)
);

INSERT INTO suppliers VALUES
(1,'Tech Supplier','Lahore'),
(2,'Cloth House','Karachi'),
(3,'Shoe Center','Lahore'),
(4,'Book World','Islamabad'),
(5,'Mobile Hub','Karachi'),
(6,'Furniture Mart','Lahore'),
(7,'Sports Zone','Sialkot'),
(8,'Beauty Store','Lahore'),
(9,'Toy Market','Karachi'),
(10,'Food Supplier','Multan');

-- Employees
CREATE TABLE employees(
employee_id INT PRIMARY KEY,
name VARCHAR(50),
position VARCHAR(50)
);

INSERT INTO employees VALUES
(1,'Ali','Manager'),
(2,'Ahmed','Sales'),
(3,'Hassan','Support'),
(4,'Usman','Delivery'),
(5,'Bilal','Warehouse'),
(6,'Zain','IT'),
(7,'Hamza','Accountant'),
(8,'Awais','Sales'),
(9,'Saad','HR'),
(10,'Tariq','Security');
