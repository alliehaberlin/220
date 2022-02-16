CREATE DATABASE company;
USE company;
CREATE TABLE customers (
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    firstname varchar(20),
    lastname varchar(20),
    company varchar(20),
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
INSERT INTO customers (firstname, lastname, company) VALUES ('michael', 'scott', 'dundermifflin');
INSERT INTO customers (firstname, lastname, company) VALUES ('jim', 'halpert', 'dundermifflin');

INSERT INTO orders (product, cost, customerId) VALUES ('paper', '10',1);
INSERT INTO orders (product, cost, customerId) VALUES ('binder', '2',1);
INSERT INTO orders (product, cost, customerId) VALUES ('stapler', '',2);
INSERT INTO orders (product, cost, customerId) VALUES ('ink', '',2);

select * from orders;
select * from customers;