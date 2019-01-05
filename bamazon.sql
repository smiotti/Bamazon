-- Drops the bamazon database if it exists currently --
DROP DATABASE IF EXISTS bamazon;

-- Creates the "bamazon" database --
CREATE DATABASE bamazon;

-- Makes it so all of the following code will affect bamazon --
USE bamazon;


CREATE TABLE products(
  item_id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(50) NOT NULL,
  department_name VARCHAR(50) NOT NULL,
  price DECIMAL(6, 2) default 0,
  stock_quantity INT default 0,
  product_sales decimal(10,2) NOT NULL,
  PRIMARY KEY (item_id)
);


-- Creates demo product data
INSERT INTO products (product_name, department_name, price, stock_quantity, product_sales)
VALUES ("Water Bottle", "Sports", 8.50, 2, 0.00);

INSERT INTO products (product_name, department_name, price, stock_quantity, product_sales)
VALUES ("4K TV", "Electronics", 1499.99, 12, 0.00);


INSERT INTO products (product_name, department_name, price, stock_quantity, product_sales)
VALUES ("Camera", "Electronics", 799.99, 7, 0.00);


INSERT INTO products (product_name, department_name, price, stock_quantity, product_sales)
VALUES ("Grill", "Lawn & Garden", 79.00, 5, 0.00);


INSERT INTO products (product_name, department_name, price, stock_quantity, product_sales)
VALUES ("Watch", "Jewelry", 215.50, 25, 0.00);


INSERT INTO products (product_name, department_name, price, stock_quantity, product_sales)
VALUES ("Tire", "Auto", 82.00, 12, 0.00);

INSERT INTO products (product_name, department_name, price, stock_quantity, product_sales)
VALUES ("Baseball Glove", "Sports", 75.00, 10, 0.00);


INSERT INTO products (product_name, department_name, price, stock_quantity, product_sales)
VALUES ("Football", "Sport", 25.00, 32, 0.00);

INSERT INTO products (product_name, department_name, price, stock_quantity, product_sales)
VALUES ("Vaccuum", "Appliance", 189.00, 25, 0.00);


INSERT INTO products (product_name, department_name, price, stock_quantity, product_sales)
VALUES ("Drone", "Electronics", 349.00, 50, 0.00);


-- SELECT * FROM products;

-- ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'rootroot';

