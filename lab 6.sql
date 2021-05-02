SELECT * FROM classicmodels.`customers` ORDER BY creditLimit DESC;
SELECT * FROM classicmodels.`customers` c WHERE c.`customerNumber`IN(SELECT p.`customerNumber` FROM classicmodels.`payments` p );
SELECT * FROM classicmodels.`customers` c WHERE c.`customerNumber`=(SELECT p.`customerNumber` FROM classicmodels.`payments` p LIMIT 0,1 );
SELECT * FROM classicmodels.`customers` c WHERE c.`customerNumber` IN(SELECT c2.`customerNumber` FROM classicmodels.`customers` c2 WHERE c2.`contactLastName` LIKE 'King' );
SELECT * FROM classicmodels.`payments` p WHERE p.`amount`> (SELECT AVG(amount) FROM classicmodels.`payments` p2);
SELECT * FROM classicmodels.`payments` p WHERE p.`amount`> (SELECT AVG(amount) FROM classicmodels.`payments` p2 WHERE p2.`paymentDate` LIKE '2003-01-16');
SELECT o.* FROM classicmodels.`orders` o LEFT OUTER JOIN classicmodels.`customers` c ON c.`customerName`=o.`customerNumber`;
SELECT * FROM classicmodels.`orders` o WHERE o.`customerNumber` IN(SELECT c.`customerNumber` FROM classicmodels.`customers` c);
SELECT * FROM classicmodels.`payments` p WHERE (p.`amount`,p.`checkNumber`) >(SELECT AVG(amount),p2.`checkNumber` FROM classicmodels.`payments` p2 WHERE p2.`paymentDate` ='2003-01-16' AND p2.`checkNumber` LIKE '%3%');
SELECT * FROM classicmodels.`employees` e WHERE e.`reportsTo` LIKE(SELECT e2.`employeeNumber` FROM classicmodels.`employees` e2 WHERE e2.`firstName` LIKE 'Diane');
SELECT * FROM classicmodels.`customers` c WHERE c.`creditLimit` =(SELECT creditLimit FROM classicmodels.`customers` c2 ORDER BY c2.`creditLimit` DESC LIMIT 1,1);
SELECT * FROM classicmodels.`customers` c WHERE c.`salesRepEmployeeNumber` IN(SELECT e.`employeeNumber` FROM classicmodels.`employees` e );
SELECT 
  * 
FROM
  classicmodels.`customers` c 
WHERE c.`creditLimit` = 
  (SELECT 
    MAX(c2.`creditLimit`) 
  FROM
    classicmodels.`customers` c2 
  WHERE c2.`creditLimit` < 
    (SELECT 
      MAX(c2.`creditLimit`) 
    FROM
      classicmodels.`customers` c2)) ;

