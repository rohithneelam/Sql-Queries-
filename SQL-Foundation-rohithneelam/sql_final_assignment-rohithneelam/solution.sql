-- 1. Find the largest order taken by each salesperson on each date.

SELECT MAX(o.amt) FROM orders o JOIN customer c ON o.cnum=c.cnum LEFT JOIN salespeople s ON s.snum=c.snum GROUP BY s.snum;

-- 2. Arrange the Orders table by descending customer number.
SELECT * FROM orders o JOIN customer c ON c.cnum=o.cnum ORDER BY c.cnum DESC;

 -- 3. Find which salespeople currently have orders in the Orders table.
SELECT s.snum FROM salespeople s JOIN customer c ON c.snum=s.snum LEFT JOIN orders o 
ON o.cnum=c.cnum WHERE o.onum NOT NULL ;

-- 4.Count the orders of each of the salespeople and output the results in descending order.
SELECT COUNT(o.onum) FROM orders o JOIN customer c ON o.cnum=c.cnum LEFT JOIN salespeople s ON s.snum=c.snum GROUP BY s.snum ORDER BY DESC;

-- 5. Find customers in San Jose who have a rating above 200.
SELECT cnum FROM customer WHERE city="San Jose" AND rating>200;

-- 6. Give the salespeople’s commissions as percentages instead of decimal numbers.
SELECT CONCAT(comm*100,'%') FROM salespeople ;

-- 7. List the largest orders for October 3, for each salesperson.
SELECT MAX(o.amt) FROM orders o JOIN cutomer c ON o.cnum=c.cnum LEFT JOIN salespeople s ON s.snum=c.snum GROUP BY s.snum;

-- 8. Count the number of salespeople currently listing orders in the Orders table.
SELECT COUNT(s.snum) FROM salespeople s JOIN orders o WHERE o.odate=(SELECT MAX(odate) FROM orders);

-- 9. Find salespeople who have multiple customers.
SELECT s.snum FROM salespeople s JOIN customer c ON s.snum=c.snum WHERE COUNT(c.cnum)>1;

-- 10. Find salespeople with customers located in their city.
SELECT s.snum FROM salespeople s JOIN customer c ON s.snum=c.snum WHERE s.city=c.city;

 

-- 11. Find all salespeople whose name starts with ‘P’ and the fourth character is ‘l’.
SELECT snum FROM salespeople WHERE sname LIKE 'p____l%';

-- 12. Select all orders that are greater than the average for October 4.
SELECT onum FROM orders WHERE amt>(SELECT AVG(amt) FROM orders WHERE odate = '2022-10-04');

-- 13. Write a query that totals the orders for each day and places the results in descending order.
SELECT SUM(amt) FROM orders GROUP BY odate DESC;

-- 14. Write a query that calculates the amount of the salesperson’s commission on each order by a customer with a rating above 100.00.
SELECT SUM((s.comm)*(o.amt)) FROM salespeople s JOIN customer c ON s.snum=c.snum LEFT JOIN orders o ON c.cnum=o.cnum GROUP BY c.cnum HAVING rating>=100;

-- 15. Find only those customers whose ratings are higher than every customer in Rome.
SELECT c.cnum FROM customer c WHERE c.rating>(SELECT MAX(rating) FROM customer WHERE city='Rome');

-- 16. Which salesperson(s) should be fired?
SELECT s.snum FROM salespeople s JOIN customer c ON c.snum=s.snum LEFT JOIN orders o ON c.cnum=o.cnum WHERE COUNT(c.cnum)<1;

-- 17. What is the total income for the company?
SELECT SUM(amt) FROM orders ;

-- 18. Write a query that selects the first customer in alphabetical order whose name begins with G.
SELECT * FROM customer WHERE cname LIKE 'G%' ORDER BY cname LIMIT 1;

-- 19. Which salespeople have no orders between 10/03/1996 and 10/05/1996?
SELECT s.snum ,s.sname FROM salespeople s ,customer c,orders o WHERE s.snum=c.snum AND c.cnum=o.cnum AND o.odate BETWEEN 10/03/1996 AND 10/05/1996 HAVING COUNT(o.onum)=0;

-- 20. Who is the most successful salesperson?
SELECT s.snum,SUM(o.amt) FROM salespeople s ,customer c,orders o WHERE s.snum=c.snum AND c.cnum=o.cnum GROUP BY s.snum ORDER BY SUM(o.amt) DESC LIMIT 1;

-- 21. Who is the worst customer with respect to the company?
SELECT c.cnum FROM customer c ,orders o WHERE c.cnum=o.cnum GROUP BY c.cnum HAVING COUNT(o.onum)=0 LIMIT 1;  

-- 22. Find all orders by customers not located in the same cities as their salespeople.
SELECT o.onum FROM customer c , orders o ,salespeople s WHERE s.snum=c.snum AND c.cnum=o.cnum AND c.cnum IN (SELECT cnum FROM customer c ,salespeople s WHERE c.snum=s.cnum AND s.city NOT LIKE c.city);

-- 23. Find all salespeople who have customers with more than one current order.
SELECT s.snum FROM salespeople s , orders o , customer c WHERE s.snum=c.snum AND c.cnum=c.onum GROUP BY s.snum HAVING COUNT(o.onum)>1 ORDER BY o.odate ASC;

-- 24. Which salesperson has earned the most by way of commission?
SELECT s.snum FROM salespeople s ,orders o , customer c WHERE o.cnum=c.cnum AND s.snum=c.snum GROUP BY s.snum HAVING MAX(SUM(o.amt*s.comm)) ORDER BY ASC LIMIT 1;

-- 25. Write a query that selects each customer’s smallest order
SELECT c.cnum , MIN(o.amt) FROM customer c ,orders o WHERE o.cnum=c.cnum GROUP BY c.cnum ;

