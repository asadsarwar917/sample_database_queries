CREATE VIEW asad AS SELECT customerName FROM classicmodels.`customers` c;
SELECT * FROM asad;
CREATE OR REPLACE VIEW asad AS SELECT customerName FROM classicmodels.`customers`;
SELECT * FROM asad;
UPDATE classicmodels.`customers` SET customerName='Asad Sarwar' WHERE customerNumber=103;
INSERT INTO classicmodels.`customers`(customerNumber,customerName) VALUES(101,'Saffffar k');
DELETE FROM classicmodels.`customers` WHERE customerNumber=101;
SELECT country FROM classicmodels.`customers` GROUP BY country;
CREATE VIEW Australia AS SELECT * FROM classicmodels.`customers` c WHERE country='Australia';
SELECT * FROM australia;
CREATE VIEW Austria AS SELECT * FROM classicmodels.`customers` c WHERE country='Austria';
SELECT * FROM austria;
CREATE VIEW Belgium AS SELECT * FROM classicmodels.`customers` c WHERE country='Belgium';
SELECT * FROM belgium;
CREATE VIEW Canada AS SELECT * FROM classicmodels.`customers` c WHERE country='Canada';
SELECT * FROM canada;
CREATE VIEW Denmark AS SELECT * FROM classicmodels.`customers` c WHERE country='Denmark';
SELECT * FROM denmark;
CREATE VIEW Finland AS SELECT * FROM classicmodels.`customers` c WHERE country='Finland';
SELECT * FROM finland;
CREATE VIEW France AS SELECT * FROM classicmodels.`customers` c WHERE country='France';
SELECT * FROM france;
CREATE VIEW Germany AS SELECT * FROM classicmodels.`customers` c WHERE country='Germany';
SELECT * FROM germany;
CREATE VIEW Hong_Kong AS SELECT * FROM classicmodels.`customers` c WHERE country='Hong Kong';
SELECT * FROM hong_kong;
CREATE VIEW Ireland AS SELECT * FROM classicmodels.`customers` c WHERE country='Ireland';
SELECT * FROM ireland;
CREATE VIEW Israel AS SELECT * FROM classicmodels.`customers` c WHERE country='Israel';
SELECT * FROM israel;
CREATE VIEW Italy AS SELECT * FROM classicmodels.`customers` c WHERE country='Italy';
SELECT * FROM italy;
CREATE VIEW Japan AS SELECT * FROM classicmodels.`customers` c WHERE country='Japan';
SELECT * FROM japan;
CREATE VIEW Netherlands AS SELECT * FROM classicmodels.`customers` c WHERE country='Netherlands';
SELECT * FROM netherlands;
CREATE VIEW Norway AS SELECT * FROM classicmodels.`customers` c WHERE country='Norway';
CREATE VIEW Philippines AS SELECT * FROM classicmodels.`customers` c WHERE country='Philippines';
CREATE VIEW Poland AS SELECT * FROM classicmodels.`customers` c WHERE country='Poland';
CREATE VIEW Portugal AS SELECT * FROM classicmodels.`customers` c WHERE country='Portugal';
CREATE VIEW Russia AS SELECT * FROM classicmodels.`customers` c WHERE country='Russia';
CREATE VIEW USA AS SELECT * FROM classicmodels.`customers` c WHERE country='USA';


SELECT * FROM norway;
SELECT * FROM philippines;
SELECT * FROM poland;
SELECT * FROM portugal;
SELECT * FROM russia;
SELECT * FROM usa;

CREATE OR REPLACE VIEW new_view AS SELECT customerNumber,customerName,COUNT(orderNumber) AS TotalOrders FROM classicmodels.`customers` c JOIN classicmodels.`orders` o USING(customerNumber) GROUP BY customerNumber ORDER BY COUNT(orderNumber) DESC;
SELECT * FROM new_view;
