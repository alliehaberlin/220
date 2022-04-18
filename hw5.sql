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
CREATE TABLE addons (
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    product varchar(20),
    cost int,
    customerId int,
    PRIMARY KEY (id),
    FOREIGN KEY (customerId) REFERENCES customers(id)
);
CREATE TABLE customer_order_association (
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    orderId int NOT NULL,
    customerId int NOT NULL,
    PRIMARY KEY (id)
);
INSERT INTO customers (firstname, lastname, store) VALUES ('vincent', 'painter', 'artists');
INSERT INTO customers (firstname, lastname, store) VALUES ('john', 'musician', 'artists');

INSERT INTO orders (product, cost, customerId) VALUES ('canvas', '10',1);
INSERT INTO orders (product, cost, customerId) VALUES ('brush', '2',1);
INSERT INTO orders (product, cost, customerId) VALUES ('saxophone', '3',2);
INSERT INTO orders (product, cost, customerId) VALUES ('drumstick', '6',2);

select * from orders;
select * from customers;
select * from customer_order_association;

INSERT INTO customer_order_association (orderid, customerid) VALUES (3, 3);

