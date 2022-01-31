--Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.
CREATE TABLE orders(
id_order SERIAL PRIMARY KEY,
person_id INTEGER,
product_name VARCHAR(100),
product_price FLOAT,
quantity INTEGER

);

--Make orders for at least two different people. person_id should be different for different people.
INSERT INTO orders( person_id, product_name, product_price, quantity)
VALUES (1, 'Pizza', 4.50, 1),
(2, 'Salad', 3.00, 2)

--Select all the records from the orders table.
SELECT * FROM orders

--Calculate the total number of products ordered.
SELECT sum(quantity) FROM orders

--Calculate the total order price.
SELECT sum(product_price) FROM orders

--Calculate the total order price by a single person_id.
SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 1;
