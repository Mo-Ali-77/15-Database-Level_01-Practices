-- Lesson 03: Foriegn Key Constranit

-- This table doesn't have a foreign key
CREATE TABLE Customers (
  id INT ,
  first_name VARCHAR(40),
  last_name VARCHAR(40),
  age INT,
  country VARCHAR(10),
  PRIMARY KEY (id)
);


-- Adding foreign key to the customer_id field
-- The foreign key references to the id field of the Customers table
CREATE TABLE Orders (
  order_id INT,
  item VARCHAR(40),
  amount INT,
  customer_id INT REFERENCES Customers(id),
  PRIMARY KEY (order_id)
  );


  -- This table doesn't have a foreign key
CREATE TABLE Customers (
  id INT ,
  first_name VARCHAR(40),
  last_name VARCHAR(40),
  age INT,
  country VARCHAR(10),
  PRIMARY KEY (id)
);

CREATE TABLE Orders (
  order_id INT,
  item VARCHAR(40),
  amount INT,
  customer_id INT ,
  PRIMARY KEY (order_id)
);


-- Adding foreign key to the customer_id field using alter
ALTER TABLE Orders
ADD FOREIGN KEY (customer_id) REFERENCES Customers(id);