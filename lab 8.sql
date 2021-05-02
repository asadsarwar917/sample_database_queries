CREATE DATABASE BMS;
CREATE DATABASE IF NOT EXISTS BMS;
DROP DATABASE BMS;
DROP DATABASE IF EXISTS BMS;
USE BMS;
CREATE TABLE Customer(
	customer_Id INT(16) NOT NULL,
	customer_Name VARCHAR(500),
	customer_Address VARCHAR(1500),
	customer_Phone VARCHAR(20)
	);
CREATE TABLE Test(SELECT * FROM classicmodels.`customers` c);
USE BMS;
CREATE TABLE Test2(SELECT * FROM classicmodels.`customers` JOIN classicmodels.`employees` ON );
USE BMS;
ALTER TABLE test ADD
 phoneCode INT(5);
USE BMS;
ALTER TABLE test MODIFY
 phoneCode INT(5) NOT NULL;
 USE BMS;
 ALTER TABLE test CHANGE phoneCode phC INT(5) NOT NULL;
 USE BMS;
 ALTER TABLE customer MODIFY customer_Id INT(16) PRIMARY KEY;
 USE BMS;
 CREATE TABLE order_table(
   Order_Id INT(16) NOT NULL,
   customer_Id INT(16) NOT NULL,
   Order_Date DATE,
   Order_Status BOOLEAN,
   shipment_Date DATE,
   PRIMARY KEY(Order_Id),
   FOREIGN KEY(customer_Id) REFERENCES customer(customer_Id)
  );