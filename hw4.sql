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
INSERT INTO customers (firstname, lastname, store) VALUES ('john', 'painter', 'artists');
INSERT INTO customers (firstname, lastname, store) VALUES ('maeve', 'musician', 'artists');

INSERT INTO orders (product, cost, customerId) VALUES ('canvas', '10',1);
INSERT INTO orders (product, cost, customerId) VALUES ('brush', '2',1);
INSERT INTO orders (product, cost, customerId) VALUES ('saxophone', '3',2);
INSERT INTO orders (product, cost, customerId) VALUES ('drumstick', '6',2);

select * from orders;
select * from customers;