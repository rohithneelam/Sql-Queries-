-- 4. Write a query to create a view with order num, order amount, customer id and customer name, and display all the fields whose order amount is highest from the view table.
CREATE VIEW highest_Orders_amounts AS
SELECT o.ONUM, o.AMT, c.CNUM, c.CNAME
FROM Orders o
INNER JOIN Customer c ON o.CNUM = c.CNUM
WHERE o.AMT = (SELECT MAX(AMT) FROM Orders);

 

SELECT * FROM highest_Orders_amounts;


