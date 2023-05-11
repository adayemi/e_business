/* SQL PROJECT: CLOTHING BUSINESS CASE STUDY;

 CREATE E_BUSINESS DATABASE*/

CREATE 
	Database e_business;

USE 
	e_business;
	
	CREATE TABLE customers(
  customer_id varchar(3),
  first_name varchar(50),
  last_name varchar(50),
  gender char(1),
  birth_date date,
  phone varchar(20),
  email varchar(50),
  addresss varchar (100));

/* Insert data into customer's table*/

INSERT INTO customers (customer_id, first_name, last_name, gender, birth_date, phone_number, email, address)
VALUES
    ('BH1', 'James', 'Okafor', 'M', '1990-05-16', '8031234567', 'jamesokafor@gmail.com', '34, Allen Avenue'),
    ('BH2', 'Ada', 'Mohammed', 'F', '1988-11-30', '7021234567', 'adamo@gmail.com', '15, Adeniran Ogunsanya Street'),
    ('BH3', 'Femi', 'Adesina', 'M', '1984-02-14', '8171234567', 'femadesina@yahoo.com', '12, Kudirat Abiola Way'),
    ('BH4', 'Blessing', 'Ogunleye', 'F', '1979-08-21', '9081234567', 'blessingogunleye@outlook.com', '7, Umaru Shinkafi Close'),
    ('BH5', 'Chinedu', 'Okonkwo', 'M', '1995-06-10', '8051234567', 'chineduokonkwo@hotmail.com', '21, Obafemi Awolowo Way'),
    ('BH6', 'Toluwani', 'Oni', 'F', '1986-12-27', '8121234567', 'emmanueladebayo@gmail.com', '18, Opebi Road'),
    ('BH7', 'Chiamaka', 'Adeyemi', 'F', '1982-04-18', '8071234567', 'hannahwilliams@yahoo.com.ng', '6, Oluwole Close'),
    ('BH8', 'Emmanuel', 'Okoye', 'M', '1978-09-02', '9031234567', 'abigailakinwunmi@gmail.com', '55, Oyewole Road'),
    ('BH9', 'Fatima', 'Abdullahi', 'F', '1992-07-19', '8151234567', 'ibrahimabdullahi@outlook.com', '22, Oladipo Diya Street'),
    ('BH10', 'Chidi', 'Eze', 'M', '1981-03-07', '7081234567', 'adeyemijohnson@hotmail.com', '3, Ogunbiyi Close'),
    ('BH11', 'Aisha', 'Ibrahim', 'F', '1989-10-23', '8021234567', 'oliviaoladele@yahoo.com.ng', '10, Oshodi-Apapa Expressway'),
    ('BH12', 'David', 'Oyedepo', 'M', '1975-11-11', '9021234567', 'chidinmaonuoha@gmail.com', '8, Uzoamaka Street'),
    ('BH13', 'Adewale', 'Akinfenwa', 'M', '1993-04-30', '8181234567', 'mikeokoye@yahoo.com', '17, Ahmadu Bello Way'),
('BH14', 'Oluwatosin', 'Olumide', 'F', '1973-12-22', '7031234567', 'nkemdilimnwosu@hotmail.com', '9, Fajuyi Road'),
    ('BH15', 'Ayomide', 'Akande', 'M', '1991-01-08', '8061234567', 'ogechiokoro@gmail.com', '12, Oba Adebimpe Road');


/*  CREATE ORDERS TABLE*/
 
CREATE TABLE orders (
  order_id INT NOT NULL AUTO_INCREMENT,
  customer_id VARCHAR(3),
  order_date DATE NOT NULL,
  shipping_address VARCHAR(255) NOT NULL,
  payment_method VARCHAR(50) NOT NULL,
  notes TEXT,
  PRIMARY KEY (order_id),
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id));

/*  THERE WAS A NEED TO UPDATE THE DATA TYPE OF THE CUSTOMER_ID*/

ALTER TABLE orders MODIFY COLUMN customer_id VARCHAR(50);


/*  CREATE ORDER STATUS TABLE*/

CREATE TABLE orders_status (
  Order_Status_id INT PRIMARY KEY,
  Name VARCHAR(50) NOT NULL
);


/*  INSERT DATA INTO ORDERS_STATUS TABLE*/

INSERT INTO orders_status (Order_Status_id, Name)
VALUES
 (1, 'Packed'),
  (2, 'Shipped'),
  (3, 'Delivered'),
  (4, 'Walk in');
  

/*  Create product table*/

CREATE TABLE products (
  id INT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description TEXT,
  price DECIMAL(10,2) NOT NULL,
  quantity INT NOT NULL,
  category_id INT
);
/*  THERE WAS A NEED TO RENAME A COLUMN IN THE PRODUCTS TABLE*/

Alter table products
Rename id TO products_id;

/*  INSERT DATA INTO PRODUCTS TABLE*/ 
	
INSERT INTO products (product_id, product_name, unit_price, quantity_available, category_id) 
VALUES 
('TP-001', 'Women''s sleevless blouse', 2000, '50', '6'),
('TP-002', 'Women''s long-sleeved blouse', 2500, '75', '6'),
('TP-003', 'Men''s Dress Shirt', 3000, '100', '5'),
('TP-004', 'Men''s Polo shirt', 1500, '80', '5'),
('TP-005', 'Men''s Casual Shirt', 2000, '120', '5'),
('TP-006', 'T-shirt', 1000, '150', '5'),
('TP-007', 'Womens Shirt dress', 3500, '60', '1'),
('TP-008', 'Women''s Long skirt', 5000, '40', '10'),
('TP-009', 'Women''s short skirt', 3000, '90', '10'),
('TP-010', 'Women''s Dress Pants', 4000, '100', '8'),
('TP-011', 'Men''s Kaftan', 4500, '70', '5'),
('TP-012', 'Men''s Khaki Pants', 2000, '120', '8'),
('TP-013', 'Women''s Jeans', 2500, '80', '9'),
('TP-014', 'Men''s Jeans', 3000, '100', '9'),
('BT-001', 'Men''s Dress Slacks', 3500, '70', '8'),
('BT-002', 'Women''s gown mini', 4000, '50', '3'),
('BT-003', 'Women''s gown midi', 4500, '60', '3'),
('BT-004', 'Women''s gown maxi', 5000, '40', '3'),
('BT-005', 'Men''s Dress Shorts', 2500, '80', '5'),
('BT-006', 'Men''s leather belt', 1500, '90', '11'),
('BT-007', 'Women''s belt', 2000, '70', '11'),
('BT-008', 'Men''s cufflinks', 3000, '50', '4'),
('BT-009', 'Women''s jackket', 5000, '60', '4'),
('BT-010', 'Men''s Suit jackket', 10000, '40', '4'),
('AC-001', 'Men''s Sweater', 4000, '80', '7'),
('AC-002', 'Women''s Sweater', 4500, '100', '7'),
('AC-003', 'Women''s Jewelry', 2000, '120', '14'),
('AC-004', 'Men''s Jewelry', 2500, '80', '14'),
('AC-005', 'Scarves', 1000, '60', '12');

/* CREATE A CATEGORY TABLE*/

CREATE TABLE category (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL,
    category_description TEXT)
	
	
/* INSERT DATA INTO THE CATEGORY TABLE*/

INSERT INTO category (category_id, name, description)
VALUES 
    (1, 'Tops', 'Shirts, blouses, sweaters, jackets'),
    (2, 'Bottoms', 'Pants, jeans, skirts'),
    (3, 'Gowns', 'Mini, midi, maxi'),
    (4, 'Accessories', 'Belts, scarves, hats, jewelry'),
    (5, 'Shirts', 'Dress shirts, casual shirts'),
    (6, 'Blouses', 'Sleeveless, short-sleeve, etc.'),
    (7, 'Sweaters', 'Cardigans, pullovers, etc.'),
    (8, 'Pants', 'Khakis, chinos, dress pants'),
    (9, 'Jeans', 'Skinny, bootcut, straight leg'),
    (10, 'Skirts', 'Long, Short'),
    (11, 'Belts', 'Leather, fabric, woven'),
    (12, 'Scarves', 'Silk, wool, cashmere'),
    (13, 'Hats', 'Baseball caps, fedoras, etc.'),
    (14, 'Jewelry', 'Necklaces, bracelets, earrings');
	

/* CREATE A TABLE FOR SIZES*/

CREATE TABLE sizes (
  Sizes_id INT PRIMARY KEY,
  name VARCHAR(50) NOT NULL);

/*INSERT DATA INTO SIZES TABLE*/
INSERT INTO sizes (sizes_id, name)
VALUES
  (1, 'Small'),
  (2, 'Medium'),
  (3, 'Large');
  (4, 'Extra Large'),
  (5, 'Extra Extra Large '),
  (6, 'Extra Extra Extra Large');


/* CREATE A PRODUCT SIZES TABLE*/

CREATE TABLE product_sizes (
  Product_id varchar(255),
  sizes_id INT,
  FOREIGN KEY (product_id) REFERENCES products(product_id),
  FOREIGN KEY (sizes_id) REFERENCES sizes(sizes_id),
  PRIMARY KEY (product_id, sizes_id);

/* Associate sizes with the product in the product_sizes table*/

INSERT INTO product_sizes (product_id, sizes_id)
VALUES
  ('TP-001', 1), ('TP-001', 2), ('TP-001', 3), ('TP-001', 4), ('TP-001', 5), ('TP-001', 6),
  ('TP-002', 1), ('TP-002', 2), ('TP-002', 3), ('TP-002', 4), ('TP-002', 5), ('TP-002', 6),
  ('TP-003', 1), ('TP-003', 2), ('TP-003', 3), ('TP-003', 4), ('TP-003', 5), ('TP-003', 6),
  ('TP-004', 1), ('TP-004', 2), ('TP-004', 3), ('TP-004', 4), ('TP-004', 5), ('TP-004', 6),
  ('TP-005', 1), ('TP-005', 2), ('TP-005', 3), ('TP-005', 4), ('TP-005', 5), ('TP-005', 6),
  ('TP-006', 1), ('TP-006', 2), ('TP-006', 3), ('TP-006', 4), ('TP-006', 5), ('TP-006', 6),
  ('TP-007', 1), ('TP-007', 2), ('TP-007', 3), ('TP-007', 4), ('TP-007', 5), ('TP-007', 6),
  ('TP-008', 1), ('TP-008', 2), ('TP-008', 3), ('TP-008', 4), ('TP-008', 5), ('TP-008', 6),
  ('TP-009', 1), ('TP-009', 2), ('TP-009', 3), ('TP-009', 4), ('TP-009', 5), ('TP-009', 6),
  ('TP-010', 1), ('TP-010', 2), ('TP-010', 3), ('TP-010', 4), ('TP-010', 5), ('TP-010', 6),
  ('TP-011', 1), ('TP-011', 2), ('TP-011', 3), ('TP-011', 4), ('TP-011', 5), ('TP-011', 6),
  ('TP-012', 1), ('TP-012', 2), ('TP-012', 3), ('TP-012', 4), ('TP-012', 5), ('TP-012', 6),
  ('TP-013', 1), ('TP-013', 2), ('TP-013', 3), ('TP-013', 4), ('TP-013', 5), ('TP-013', 6),
  ('TP-014', 1), ('TP-014', 2), ('TP-014', 3), ('TP-014', 4), ('TP-014', 5), ('TP-014', 6),
  ('BT-001', 1), ('BT-001', 2), ('BT-001', 3), ('BT-001', 4), ('BT-001', 5), ('BT-001', 6),
  ('BT-002', 1), ('BT-002', 2), ('BT-002', 3), ('BT-002', 4), ('BT-002', 5), ('BT-002', 6),
  ('BT-003', 1), ('BT-003', 2), ('BT-003', 3), ('BT-003', 4), ('BT-003', 5), ('BT-003', 6),
  ('BT-004', 1), ('BT-004', 2), ('BT-004', 3), ('BT-004', 4), ('BT-004', 5), ('BT-004', 6),
  ('BT-005', 1), ('BT-005', 2), ('BT-005', 3), ('BT-005', 4), ('BT-005', 5), ('BT-005', 6),
  ('BT-009', 1), ('BT-009', 2), ('BT-009', 3), ('BT-009', 4), ('BT-009', 5), ('BT-009', 6),
  ('BT-010', 1), ('BT-010', 2), ('BT-010', 3), ('BT-010', 4), ('BT-010', 5), ('BT-010', 6),
  ('AC-001', 1), ('AC-001', 2), ('AC-001', 4), ('AC-001', 5), ('AC-001', 6),
  ('AC-002', 1), ('AC-002', 2), ('AC-002', 4), ('AC-002', 5), ('AC-002', 6),
  ('AC-006', 1), ('AC-006', 2), ('AC-006', 4), ('AC-006', 6);
  
  /*CREATE EMPLOYEE'S TABLE*/
 
 CREATE TABLE employee (
  employee_id INT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(100),
  phone_number VARCHAR(20),
  address VARCHAR(100),
  city VARCHAR(50),
  date_of_birth DATE,
  hire_date DATE,
  position VARCHAR(50),
  department VARCHAR(50)
);

  /*INSERT DATA INTO EMPLOYEE'S TABLE*/
  
(1, 'Chiamaka', 'Okonkwo', 'chiamaka.okonkwo@example.com', '2348012345678', '12 Abiola Way', 'Lagos', '1992-07-16', '2022-01-10', 'Sales Associate', 'Sales'),
(2, 'Ibrahim', 'Yusuf', 'ibrahim.yusuf@example.com', '2348023456789', '3B Fajuyi Street', 'Abuja', '1988-02-20', '2021-09-01', 'Store Manager', 'Operations'),
(3, 'Chinonso', 'Obi', 'chinonso.obi@example.com', '2348034567890', '7 Opebi Road', 'Lagos', '1990-05-09', '2022-03-15', 'Customer Service Representative', 'Customer Service'),
(4, 'Aisha', 'Aliyu', 'aisha.aliyu@example.com', '2347045678901', '22 Ahmadu Bello Way', 'Kano', '1995-11-24', '2022-02-02', 'Inventory Specialist', 'Inventory Management'),
(5, 'Tunde', 'Adesanya', 'tunde.adesanya@example.com', '2347067890123', '15 Onitsha Street', 'Ibadan', '1993-09-18', '2021-10-20', 'Visual Merchandiser', 'Marketing'),
(6, 'Nkechi', 'Nwosu', 'nkechi.nwosu@example.com', '2347089012345', '9 Abakaliki Road', 'Enugu', '1991-06-30', '2022-04-05', 'Sales Manager', 'Sales'),
(7, 'Yusuf', 'Ahmed', 'yusuf.ahmed@example.com', '2348012345678', '2 Katsina Road', 'Kaduna', '1996-12-12', '2021-11-15', 'Cashier', 'Finance'),
(8, 'Amaka', 'Eze', 'amaka.eze@example.com', '2348098765432', '17 Adekunle Fajuyi Road', 'Ibadan', '1987-08-05', '2022-03-01', 'Store Associate', 'Operations'),
(9, 'Dayo', 'Oladele', 'dayo.oladele@example.com', '2348023456789', '23 Olorunfunmi Street', 'Lagos', '1994-03-12', '2022-02-14', 'Sales Associate', 'Sales'),
(10, 'Idris', 'Bello', 'idris.bello@example.com', '2347034567890', '11 Yakubu Gowon Crescent', 'Abuja', '1989-01-08', '2021-12-01', 'Customer Service Representative', 'Customer Service');

/*UPDATE THE EMPLOYEE EMAIL RECORD*/

UPDATE employee
SET Email =
    CASE employee_id
        WHEN 1 THEN 'chiamaka.okonkwo@gmail.com'
        WHEN 2 THEN 'ibrahim.yusuf@yahoo.com'
        WHEN 3 THEN 'chinonso.obi@gmail.com'
        WHEN 4 THEN 'aisha.aliyu@yahoo.com'
        WHEN 5 THEN 'tunde.adesanya@hotmail.com'
        WHEN 6 THEN 'nkechi.nwosu@gmail.com'
        WHEN 7 THEN 'yusuf.ahmed@yahoo.com'
        WHEN 8 THEN 'amaka.eze@yahoo.com'
        WHEN 9 THEN 'dayo.oladele@yahoo.com'
        WHEN 10 THEN 'idris.bello@hotmail.com'
	End
WHERE employee_id BETWEEN 1 AND 10;


/*CREATE ORDER_ITEMS TABLE*/

CREATE TABLE order_items (
  order_id INT,
  product_id VARCHAR(50),
  size_id VARCHAR(50),
  quantity INT,
  unit_price DECIMAL(10, 2),
  PRIMARY KEY (order_id, product_id, size_id),
  FOREIGN KEY (product_id) REFERENCES products (product_id)
);

/* INSERT DATA INTO THE ORDER_ITEMS TABLE*/

INSERT INTO order_items (order_id, product_id, size_id, quantity, unit_price)
VALUES 
(1, 'TP-001', 2, 2, 2000),
(1, 'TP-002', 2, 3, 2500),
(1, 'TP-006', 1, 1, 1000),
(2, 'TP-004', 3, 2, 1500),
(2, 'TP-005', 2, 1, 2000),
(2, 'BT-007', 3, 1, 2000),
(3, 'TP-003', 2, 4, 3000),
(3, 'TP-013', 2, 2, 2500),
(3, 'AC-003', 1, 1, 2000),
(4, 'TP-009', 1, 2, 3000),
(4, 'BT-003', 2, 1, 4500),
(4, 'BT-009', 2, 1, 5000),
(5, 'TP-012', 2, 3, 2000),
(5, 'BT-002', 2, 1, 4000),
(5, 'BT-006', 3, 2, 1500),
(5, 'AC-002', 1, 1, 4500),
(1, 'TP-001', 1, 2, 2000),
(1, 'TP-005', 2, 1, 2000),
(1, 'BT-006', 3, 2, 1500),
(2, 'TP-007', 1, 1, 3500),
(2, 'TP-013', 2, 3, 2500),
(2, 'AC-005', 4, 4, 1000),
(3, 'TP-012', 5, 2, 2000),
(3, 'TP-014', 2, 1, 3000),
(3, 'AC-003', 3, 3, 2000),
(4, 'TP-008', 4, 1, 5000),
(4, 'TP-009', 5, 2, 3000),
(4, 'BT-007', 5, 1, 2000),
(5, 'TP-003', 1, 1, 3000),
(5, 'TP-004', 6, 1, 1500),
(5, 'BT-001', 4, 2, 3500),
(6, 'BT-002', 1, 1, 4000),
(6, 'BT-003', 2, 2, 4500),
(6, 'BT-004', 3, 3, 5000),
(7, 'TP-010', 4, 1, 4000),
(7, 'TP-011', 6, 2, 4500),
(7, 'BT-009', 2, 1, 5000),
(8, 'AC-001', 1, 2, 4000),
(8, 'AC-002', 2, 1, 4500),
(8, 'AC-006', 3, 3, 500),
(9,	'AC-004', 4, 2, 2500),
(9,	'AC-005', 4, 1, 1000),
(9,	'BT-010', 4, 1, 10000),
(10, 'TP-006', 1, 2, 1000),
(10, 'AC-003', 2, 1, 2000);

/*UPDATE THE ABOVE TABLE*/

INSERT INTO order_items (order_id, product_id, size_id, quantity, unit_price)
VALUES 
(11, 'AC-004', 3, 1, 2500),
(11, 'AC-003', 1, 2, 2000),
(12, 'AC-003', 1, 1, 2000),
(13, 'TP-012', 2, 3, 2000),
(14, 'TP-011', 1, 2, 4500),
(14, 'BT-003', 2, 1, 4500),
(15, 'BT-009', 3, 1, 5000);

/* INSERT DATA INTO THE ORDERS TABLE*/

INSERT INTO orders (order_id, customer_id, order_date, shipping_address, payment_method)
VALUES 
(1, 'BH6', '2023-05-01', '18, Opebi Road , Lagos', 'Credit Card'),
(2, 'BH3', '2023-11-03', '12, Kudirat Abiola Way, Ikeja', 'Transfer'),
(3, 'BH1', '2023-01-07', '34, Allen Avenue , Lagos', 'Transfer'),
(4, 'BH4', '2023-02-17', '7, Umaru Shinkafi Close,Abuja', 'Credit Card'),
(5, 'BH8', '2023-08-02', '55, Oyewole Road,  Abeokuta', 'Transfer'),
(6, 'BH7', '2023-01-28', '6, Oluwole Close , Ibadan', 'Cash'),
(7, 'BH10', '2023-03-22', '3, Ogunbiyi Close, lagos', 'Credit Card'),
(8, 'BH2', '2023-03-30', '15, Adeniran Ogunsanya Street, lagos', 'Cash'),
(9, 'BH5', '2023-02-19', '21, Obafemi Awolowo Way, enugu', 'Cash'),
(10, 'BH9', '2023-01-13', '22, Oladipo Diya Street, abuja', 'Credit Card'),
(11, 'BH19', '2023-01-26', '3, Samuel Adesujo Close, abuja', 'Transfer'),
(12, 'BH16', '2023-02-25', '14, Murtala Mohammed Highway, calabar', 'Cash'),
(13, 'BH17', '2023-01-13', '16, Oshin Road, ijebu-ode', 'Credit Card'),
(14, 'BH12', '2023-10-02', '8, Uzoamaka Street, owerri', 'Transfer'),
(15, 'BH18', '2023-08-01', '7, Adelabu Street, ibadan', 'Cash');

/* INSERT TWO ADDITIONAL COLUMNS(CITY AND STATE)INTO THE CUSTOMER'S TABLE*/
ALTER TABLE customers
ADD COLUMN city VARCHAR(50),
ADD COLUMN state VARCHAR(50);

/* TO INSERT DATA INTO THESE NEW COLUMNS; UPDATE CUSTOMERS TABLE*/


UPDATE customers
SET city = 
  CASE 
    WHEN customer_id = 'BH1' THEN 'Lagos'
    WHEN customer_id = 'BH2' THEN 'Onitsha'
    WHEN customer_id = 'BH3' THEN 'Ikeja'
    WHEN customer_id = 'BH4' THEN 'Abuja'
    WHEN customer_id = 'BH5' THEN 'Enugu'
    WHEN customer_id = 'BH6' THEN 'Lagos'
    WHEN customer_id = 'BH7' THEN 'Ibadan'
    WHEN customer_id = 'BH8' THEN 'Abeokuta'
    WHEN customer_id = 'BH9' THEN 'Abuja'
    WHEN customer_id = 'BH10' THEN 'Lagos'
    WHEN customer_id = 'BH11' THEN 'Lagos'
    WHEN customer_id = 'BH12' THEN 'Owerri'
    WHEN customer_id = 'BH13' THEN 'Kaduna'
    WHEN customer_id = 'BH14' THEN 'Ado-Ekiti'
    WHEN customer_id = 'BH15' THEN 'Akure'
    WHEN customer_id = 'BH16' THEN 'Calabar'
    WHEN customer_id = 'BH17' THEN 'Ijebu-Ode'
    WHEN customer_id = 'BH18' THEN 'Ibadan'
    WHEN customer_id = 'BH19' THEN 'Abuja'
    WHEN customer_id = 'BH20' THEN 'Lagos'
  END,
  state = 
  CASE 
    WHEN customer_id = 'BH1' THEN 'LA'
    WHEN customer_id = 'BH2' THEN 'AN'
    WHEN customer_id = 'BH3' THEN 'LA'
    WHEN customer_id = 'BH4' THEN 'FC'
    WHEN customer_id = 'BH5' THEN 'EN'
    WHEN customer_id = 'BH6' THEN 'LA'
    WHEN customer_id = 'BH7' THEN 'OY'
    WHEN customer_id = 'BH8' THEN 'OG'
    WHEN customer_id = 'BH9' THEN 'FC'
    WHEN customer_id = 'BH10' THEN 'LA'
    WHEN customer_id = 'BH11' THEN 'LA'
    WHEN customer_id = 'BH12' THEN 'IM'
    WHEN customer_id = 'BH13' THEN 'KD'
    WHEN customer_id = 'BH14' THEN 'EK'
    WHEN customer_id = 'BH15' THEN 'ON'
    WHEN customer_id = 'BH16' THEN 'CR'
    WHEN customer_id = 'BH17' THEN 'OG'
    WHEN customer_id = 'BH18' THEN 'OY'
    WHEN customer_id = 'BH19' THEN 'FC'
    WHEN customer_id = 'BH20' THEN 'LA'
  END
WHERE customer_id IN ('BH1', 'BH2', 'BH3', 'BH4', 'BH5', 'BH6', 'BH7', 'BH8', 'BH9', 'BH10', 'BH11', 'BH12', 'BH13', 'BH14', 'BH15', 'BH16', 'BH17', 'BH18', 'BH19', 'BH20');



/* 
/* WRITE A QUERY TO GET ALL CUSTOMERS*/

SELECT * FROM customers;

/* WRITE A QUERY TO GET ALL ORDERS*/

SELECT * FROM orders;

/* WRITE A QUERY TO GET ALL PRODUCTS*/

SELECT * FROM products;

/* WRITE A QUERY TO GET ALL EMPLOYEES*/

SELECT * FROM EMPLOYEE;

/* Retrieve all customer information including their name, email, and phone number*/

SELECT email, phone, first_name, gender, city
FROM customers;


/* Retrieve all product information including the product name, unit price, and quantity available*/
SELECT Name, unit_price, quantity_available
FROM products;

/* Retrieve all order information including the order ID, order date, and customer name*/

SELECT o.order_id, o.order_date, c.first_name, c.last_name 
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id;

/* Retrieve all orders for a specific customer by specifying the customer ID*/
SELECT * FROM orders WHERE customer_id = 'BH10';


/* Retrieve all orders that were placed between two specific dates*/

SELECT *
FROM orders
WHERE order_date BETWEEN '2023-01-01' AND '2023-3-31';

/*Retrieve all the sales for a specific month*/
SELECT * FROM orders WHERE MONTH(order_date) = '2';

/* Retrieve all the sales for a specific product*/
SELECT o.order_id, o.order_date, c.first_name, c.last_name
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
WHERE p.name = 'Women''s Jewelry';

/*Retrieve the total revenue for a specific month*/
SELECT SUM(oi.unit_price) 
FROM orders o 
JOIN order_items oi ON o.order_id = oi.order_id 
WHERE MONTH(o.order_date) = 3;

/*Retrieve the top-selling products*/
SELECT p.name, SUM(oi.quantity) AS total_quantity 
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.name 
ORDER BY total_quantity DESC 
LIMIT 10;

/*  Retrieve the top-spending customers by city*/
SELECT c.city, c.customer_id, SUM(oi.quantity * oi.unit_price) AS total_spending
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY c.city, c.customer_id
ORDER BY c.city, total_spending DESC;

/*calculate the quantity of products left after subtracting all the orders*/

SELECT p.product_id, p.name, p.quantity_available - COALESCE(SUM(oi.quantity), 0) AS remaining_quantity
FROM products p
LEFT JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_id
ORDER BY remaining_quantity DESC;

