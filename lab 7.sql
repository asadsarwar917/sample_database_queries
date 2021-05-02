INSERT INTO classicmodels.`customers`(customerNumber) VALUES('786');
INSERT INTO classicmodels.`customers`(customerNumber) VALUES('787'),('788'),('789');
UPDATE classicmodels.`customers` 
  SET customerName='Saffar Corp.',postalCode='87550',creditLimit=9999,phone='123456789',city='Quetta',state='Balochistan',country='Pakistan' 
    WHERE customerNumber=786;
UPDATE classicmodels.`employees` SET email='mary.pat@classicmodelcar.com' WHERE firstName='Mary' AND lastName='Patterson';
UPDATE classicmodels.`employees` SET email='mary.hill@classicmodelcar.com', lastName='Hill' WHERE firstName='Mary' AND lastName='Patterson';
DELETE FROM classicmodels.`customers` WHERE customerNumber=786;
SET autocommit=0;
START TRANSACTION;
INSERT INTO
classicmodels.`customers`(customerNumber) VALUES('786');
COMMIT;

START TRANSACTION;
INSERT INTO
classicmodels.`customers`(customerNumber) VALUES('790');
ROLLBACK;
SET autocommit=0;
START TRANSACTION;
INSERT INTO classicmodels.`customers`(customerNumber) VALUES('740');
COMMIT;
INSERT INTO classicmodels.`customers`(customerNumber) VALUES('741');