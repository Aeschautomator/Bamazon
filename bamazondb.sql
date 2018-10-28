-- drops the bamazon_db if it exists currently --
DROP DATABASE IF EXISTS bamazon_db;
-- Creates the "bamazon" database -- 
CREATE DATABASE bamazon_db;

-- Makes it so all of the following code will affect bamazon_db;
USE bamazon_db;

-- Creates the table "people" within animals_db --
CREATE TABLE products (
 -- Makes a string column called "name" which cannot contain null --
    item_id VARCHAR(30) NOT NULL,
 --  Makes a string column called "product_name" which cannot contain null --
    product_name VARCHAR(30),
 -- Makes a string column called "department_name" which cannot contain null --
    department_name VARCHAR(30),
 -- Makes a numeric column called "price" --
    price_cost DECIMAL(10,2),
 -- Stock quantity --
    stock_quantity INTEGER(20)
);

-- Creates new rows containing data in all the named columns --
INSERT INTO products (item_id, product_name, department_name, price_cost, stock_quantity)
VALUES ("34", "Silver Earring","Jewelry", 45.00, 78 )

INSERT INTO products (item_id, product_name, department_name, price_cost,stock_quantity)
VALUES ("35", "Kindle","electronics", 45.00, 92 )

INSERT INTO products (item_id, product_name, department_name, price_cost, stock_quantity)
VALUES ("36", "keurig","kitchen", 150.00, 98 )

INSERT INTO products (item_id, product_name, department_name, price_cost, stock_quantity)
VALUES ("37", "small pillow","Household", 45.00, 78 )

INSERT INTO products (item_id, product_name, department_name, price_cost, stock_quantity)
VALUES ("38", "starbucks bulk cappucino 12pk","food", 27.43, 22 )

INSERT INTO products (item_id, product_name, department_name, price_cost, stock_quantity)
VALUES ("1239", "iphone 6s case","electronic accessories", 45.00, 78 )

INSERT INTO products (item_id, product_name, department_name, price_cost, stock_quantity)
VALUES ("1240", "kettle bells","gym ", 28.00, 68 )

INSERT INTO products (item_id, product_name, department_name, price_cost, stock_quantity)
VALUES ("1241", "usb c charger bamazon basics","electronic accessories", 8.72, 18 )

INSERT INTO products (item_id, product_name, department_name, price_cost, stock_quantity)
VALUES ("1242", "zoes kitchen gift card","gift cards", 10.00, 200 )

INSERT INTO products (item_id, product_name, department_name, price_cost, stock_quantity)
VALUES ("1243", "septum ring","Jewelry", 32.00, 87 )

INSERT INTO products (item_id, product_name, department_name, price_cost, stock_quantity)
VALUES ("1244", "adidas jacket","apparel", 45.00, 15 )

SELECT * FROM products