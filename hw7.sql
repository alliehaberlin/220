CREATE DATABASE store;
USE store;
CREATE TABLE customers (
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    firstname varchar(20),
    lastname varchar(20),
    store varchar(20),
    PRIMARY KEY(id)
);
CREATE TABLE orders (
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    product varchar(20),
    cost int,
    customerId int,
    PRIMARY KEY (id),
    FOREIGN KEY (customerId) REFERENCES customers(id)
);
CREATE TABLE products (
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    name varchar(20),
    cost int,
    PRIMARY KEY (id)
);
CREATE TABLE studio (
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    address int,
    unit int,
    PRIMARY KEY (id)
);
CREATE TABLE addons (
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    product varchar(20),
    cost int,
    customerId int,
    PRIMARY KEY (id),
    FOREIGN KEY (customerId) REFERENCES customers(id)
);
CREATE TABLE product_order_association (
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    orderId int NOT NULL,
    productId int NOT NULL,
    PRIMARY KEY (id)
);
INSERT INTO customers (firstname, lastname, store) VALUES ('vincent', 'painter', 'artists');
INSERT INTO customers (firstname, lastname, store) VALUES ('john', 'musician', 'artists');

INSERT INTO orders (product, cost, customerId) VALUES ('canvas', '10',1);
INSERT INTO orders (product, cost, customerId) VALUES ('brush', '2',1);
INSERT INTO orders (product, cost, customerId) VALUES ('saxophone', '3',2);
INSERT INTO orders (product, cost, customerId) VALUES ('drumstick', '6',2);

INSERT INTO products (name, cost) VALUES ('pencil', 1);

INSERT INTO studios (address, unit) VALUES (null, 7);
INSERT INTO studios (address, unit) VALUES (null, 8);

select * from orders;
select * from customers;
select * from products;
select * from product_order_association;
select * from studios;

DELETE from orders where id = 5;
DELETE from orders where id = 6;
DELETE from orders where id = 7;
DELETE from orders where id = 8;
DELETE from orders where id in (9, 10, 11, 12);
DELETE from customers where id in (3, 4);
DELETE from studios where id in (1, 2, 3, 4);

SELECT customers.firstname, customers.lastname, studios.address
FROM customers
INNER JOIN studios ON studios.address = customers.id;