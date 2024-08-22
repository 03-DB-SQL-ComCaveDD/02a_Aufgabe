
DROP DATABASE IF EXISTS test_1;
CREATE DATABASE test_1;
USE test_1;

CREATE TABLE customers
(
  id   INT         NOT NULL,
  name VARCHAR(20) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE orders
(
  id        INT         NOT NULL,
  ordername VARCHAR(20) NOT NULL,
  c_id      INT         NOT NULL,
  PRIMARY KEY (id)
);

ALTER TABLE orders
  ADD CONSTRAINT FK_customers_TO_orders
    FOREIGN KEY (c_id)
    REFERENCES customers (id);

DESCRIBE customers;
DESCRIBE orders;