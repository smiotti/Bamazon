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
  PRIMARY KEY (item_id)
);


-- Creates demo product data
INSERT INTO products (product_name, department_name, price, stock_quantity )
VALUES ("Water Bottle", "Sports", 8.50, 2);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("4K TV", "Electronics", 1499.99, 12);


INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Camera", "Electronics", 799.99, 7);


INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Grill", "Lawn & Garden", 79.00, 5);


INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Watch", "Jewelry", 215.50, 25);


INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Tire", "Auto", 82.00, 12);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Baseball Glove", "Sports", 75.00, 10);


INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Football", "Sport", 25.00, 32);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Vaccuum", "Appliance", 189.00, 25);


INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Drone", "Electronics", 349.00, 50);


-- SELECT * FROM products;

-- ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'rootroot';

