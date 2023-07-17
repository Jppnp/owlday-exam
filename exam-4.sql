CREATE DATABASE exam4DB;

CREATE TABLE User (
    id int NOT NULL AUTO_INCREMENT,
    firstname varchar(255),
    lastname varchar(255),
    username varchar(255),
    hashPassword varchar(255),
    userRole varchar(255),
    CONSTRAINT user_ak UNIQUE (username),
    CONSTRAINT user_pk PRIMARY KEY (id)
);

CREATE TABLE Customer (
    id int NOT NULL AUTO_INCREMENT,
    firstname varchar(255),
    lastname varchar(255),
    username varchar(255),
    hashPassword varchar(255),
    CONSTRAINT customer_ak UNIQUE (username),
    CONSTRAINT customer_pk PRIMARY KEY (id)
);

CREATE TABLE Product (
    id int NOT NULL AUTO_INCREMENT,
    name varchar(255),
    price int,
    descript varchar(255),
    CONSTRAINT product_pk PRIMARY KEY (id)
);

CREATE TABLE Cart (
    id int NOT NULL AUTO_INCREMENT,
    customerID int,
    CONSTRAINT cart_pk PRIMARY KEY(id),
);

CREATE TABLE CartItem (
    cartID int NOT NULL,
    productID int NOT NULL,
    amount int,
    CONSTRAINT cartItem_pk PRIMARY KEY(cartID, productID)
);
-- For purchase when customer purchase that mean have create order
CREATE TABLE Order (
    customerID int,
    productID int,
    orderStatus varchar(255),
    orderDate timestamp NOT NULL,
    CONSTRAINT order_pk PRIMARY KEY(customerId, productID)
);
-- FK cart_customer
ALTER TABLE Cart ADD CONSTRAINT cart_customer 
    FOREIGN KEY(customerID) REFERENCES Customer(id);

-- FK cartItem_cart
ALTER TABLE CartItem ADD CONSTRAINT cartItem_cart 
    FOREIGN KEY (cartID) REFERENCES Cart(id);

-- FK cartItem_product
ALTER TABLE CartItem ADD CONSTRAINT cartItem_product 
    FOREIGN KEY (productID) REFERENCES Product(id);

-- FK order_customer
ALTER TABLE Order ADD CONSTRAINT order_customer 
    FOREIGN KEY (customerID) REFERENCES Customer(id);

-- FK order_product
ALTER TABLE Order ADD CONSTRAINT order_product
    FOREIGN KEY (productID) REFERENCES Product(id);