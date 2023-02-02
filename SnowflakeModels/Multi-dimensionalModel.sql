CREATE TABLE time_dimension (
  time_key INT PRIMARY KEY,
  year INT,
  quarter INT,
  month INT,
  day INT
);

CREATE TABLE product_dimension (
  product_key INT PRIMARY KEY,
  product_name VARCHAR(50),
  product_category VARCHAR(50)
);

CREATE TABLE sales_fact (
  sales_fact_id INT PRIMARY KEY,
  time_key INT,
  product_key INT,
  sales_quantity INT,
  FOREIGN KEY (time_key) REFERENCES time_dimension (time_key),
  FOREIGN KEY (product_key) REFERENCES product_dimension (product_key)
);
