SELECT * FROM classicmodels.`customers`;
SELECT * FROM classicmodels.`payments`;
SELECT * FROM classicmodels.`productlines`;
SELECT * FROM classicmodels.`payments` UNION SELECT * FROM classicmodels.`productlines`; # UNION
SELECT * FROM classicmodels.`payments` py1 UNION ALL SELECT * FROM classicmodels.`payments` py2; # UNION ALL
SELECT * FROM classicmodels.`customers` c JOIN classicmodels.`orders` o; #JION
SELECT * FROM classicmodels.`customers` c ,classicmodels.`orders` o; # ,
SELECT customerName,orderNumber,orderDate FROM classicmodels.`customers` c INNER JOIN classicmodels.`orders` o ON c.`customerNumber`=o.`customerNumber`; # ____ INNER JOIN ____ ON "condition"
SELECT customerName,orderNumber,orderDate FROM classicmodels.`customers` c JOIN classicmodels.`orders` o USING(customerNumber); # ____ JOIN ____ USING(condition) ///comment:Don't use aliases with USING
SELECT firstName, city FROM classicmodels.`employees` e INNER JOIN classicmodels.`offices` o USING(officeCode) ;
SELECT customerNumber,customerName,amount,checkNumber FROM classicmodels.`customers` c INNER JOIN classicmodels.`payments` p USING(customerNumber);
SELECT productName,textDescription FROM classicmodels.`productlines` INNER JOIN classicmodels.`products` USING(productLine);
SELECT * FROM classicmodels.`customers` c LEFT OUTER JOIN classicmodels.`orders` o ON c.`customerNumber`=o.`customerNumber`;
SELECT * FROM classicmodels.`customers` c LEFT JOIN classicmodels.`orders` o ON c.`customerNumber`=o.`customerNumber` WHERE o.`customerNumber` IS NULL;
SELECT p.`productName`,od.`orderNumber`,od.`quantityOrdered`,od.`priceEach` FROM classicmodels.`products` p LEFT OUTER JOIN classicmodels.`orderdetails` od USING(productcode);
SELECT * FROM classicmodels.`customers` c RIGHT OUTER JOIN classicmodels.`orders` o ON c.`customerNumber`=o.`customerNumber`;
SELECT e.`firstName`,c.`customerName` FROM classicmodels.`employees` e RIGHT OUTER JOIN classicmodels.`customers` c ON e.`employeeNumber`=c.`salesRepEmployeeNumber`;
SELECT 
  e1.`firstName` AS Employee,
  e2.`firstName` AS Manager 
FROM
  classicmodels.`employees` e1 
  JOIN classicmodels.`employees` e2 
    ON e1.`reportsTo` = e2.`employeeNumber`;
SELECT c.`customerName`,o.`status`,od.`orderLineNumber` 
FROM
 classicmodels.`customers` c
 JOIN classicmodels.`orders` o 
 JOIN classicmodels.`orderdetails` od 
  ON c.`customerNumber`=o.`customerNumber` && o.`orderNumber`=od.`orderNumber`;
