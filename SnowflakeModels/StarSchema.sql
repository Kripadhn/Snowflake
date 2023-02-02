CREATE TABLE product (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(50),
  product_category VARCHAR(50)
);

CREATE TABLE sales (
  sale_id INT PRIMARY KEY,
  sale_date DATE,
  product_id INT,
  sales_quantity INT,
  FOREIGN KEY (product_id) REFERENCES product (product_id)
);
