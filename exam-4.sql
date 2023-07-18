CREATE TABLE IF NOT EXISTS "user" (
    id int NOT NULL,
    firstname varchar (255),
    lastname varchar (255),
    username varchar (255),
    hashPassword varchar (255),
    userRole varchar (255),
    CONSTRAINT user_ak UNIQUE (username),
    CONSTRAINT user_pk PRIMARY KEY (id)
);
CREATE TABLE IF NOT EXISTS "customer" (
    id int NOT NULL,
    firstname varchar (255),
    lastname varchar (255),
    username varchar (255),
    hashPassword varchar (255),
    CONSTRAINT customer_ak UNIQUE (username),
    CONSTRAINT customer_pk PRIMARY KEY (id)
);
CREATE TABLE IF NOT EXISTS "product" (
    id int NOT NULL,
    name varchar (255),
    price int,
    descript varchar (255),
    CONSTRAINT product_pk PRIMARY KEY (id)
);
CREATE TABLE IF NOT EXISTS "cart" (
    id int NOT NULL,
    customerID int NOT NULL,
    CONSTRAINT cart_pk PRIMARY KEY (id)
);
CREATE TABLE IF NOT EXISTS "cartItem" (
    cartID int NOT NULL,
    productID int NOT NULL,
    amount int,
    CONSTRAINT cartItem_pk PRIMARY KEY(cartID, productID)
);
-- When customer create order I assume customer purchase product
CREATE TABLE IF NOT EXISTS "order" (
    customerID int NOT NULL,
    productID int NOT NULL,
    orderStatus varchar(255),
    orderDate timestamp NOT NULL,
    CONSTRAINT order_pkgi PRIMARY KEY(customerId, productID)
);
-- FK cart_customer
ALTER TABLE "cart"
ADD CONSTRAINT cart_customer FOREIGN KEY(customerID) REFERENCES customer(id);
-- FK cartItem_cart
ALTER TABLE "cartItem"
ADD CONSTRAINT cartItem_cart FOREIGN KEY (cartID) REFERENCES cart(id);
-- FK cartItem_product
ALTER TABLE "cartItem"
ADD CONSTRAINT cartItem_product FOREIGN KEY (productID) REFERENCES product(id);
-- FK order_customer
ALTER TABLE "order"
-- FK order_product
ADD CONSTRAINT order_customer FOREIGN KEY (customerID) REFERENCES customer(id);
ALTER TABLE "order"
ADD CONSTRAINT order_product FOREIGN KEY (productID) REFERENCES product(id);