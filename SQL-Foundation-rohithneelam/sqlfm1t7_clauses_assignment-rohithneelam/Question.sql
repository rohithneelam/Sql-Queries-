-- 1. Write the query to display customer details whose sales_number is not equal to 1002.
-- 2. Write the query to display customer names with min ratings of each customer group by customer names having sum of ratings greater than 600.

-- 3. Write the query to display the customer names when customer_id count based the city and having customer_id count greater than 5. 

-- 4. Write the query to display customer details in the order of cites in decrementing order.
 
--5. Write the query to display customer details with the limit of 4.

-- CREATE TABLE Customer(CNUM INT PRIMARY KEY, CNAME VARCHAR(30), CITY    VARCHAR(30), RATING INT, SNUM INT);
-- INSERT INTO Customer VALUES(2001,'Hoffman','London',100,1001),
-- (2002,'Giovanni','Rome',200,1003),
-- (2003,'Liu','San Jose',200,1002),
-- (2004,'Grass','Berlin',300,1002),
-- (2006,'Clemens','London',100,1001),
-- (2008,'Cisneros','San Jose',300,1007),
-- (2007,'Pereira','Rome',100,1004);
 
-- 1. Write the query to display customer details whose sales_number is not equal to 1002.
select * from customer where SNUM !=102;
 
-- 2. Write the query to display customer names with min ratings of each customer group by customer names having sum of ratings greater than 600.
 
SELECT CNAME, MIN(RATING)
FROM Customer
WHERE (SELECT SUM(RATING) FROM Customer WHERE CNAME = CNAME) > 600
GROUP BY CNAME;
 
-- 3. Write the query to display the customer names when customer_id count based the city and having customer_id count greater than 5.
 
SELECT CNAME FROM Customer GROUP BY CITY HAVING COUNT(CNUM)>5;
 
-- 4. Write the query to display customer details in the order of cites in decrementing order.
 
SELECT * FROM Customer ORDER BY CITY DESC
 
-- 5. Write the query to display customer details with the limit of 4.
SELECT * FROM Customer LIMIT 4;

--There is an error in query 2. 
--SELECT CustomerName, MIN(Rating) FROM Customers GROUP BY CustomerName HAVING SUM(Rating) > 600;
