CREATE TABLE customer (
  customer_id INT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50)
);

CREATE TABLE order (
  order_id INT PRIMARY KEY,
  order_date DATE,
  customer_id INT,
  FOREIGN KEY (customer_id) REFERENCES customer (customer_id)
);

CREATE TABLE order_item (
  order_item_id INT PRIMARY KEY,
  order_id INT,
  product_id INT,
  sales_quantity INT,
  FOREIGN KEY (order_id) REFERENCES order (order_id),
  FOREIGN KEY (product_id) REFERENCES product (product_id)
);
