CREATE TABLE sales_fact (
  sales_fact_id INT PRIMARY KEY,
  sales_date DATE,
  product_id INT,
  sales_quantity INT,
  FOREIGN KEY (product_id) REFERENCES product (product_id)
);

CREATE TABLE returns_fact (
  returns_fact_id INT PRIMARY KEY,
  returns_date DATE,
  product_id INT,
  returns_quantity INT,
  FOREIGN KEY (product_id) REFERENCES product (product_id)
);
