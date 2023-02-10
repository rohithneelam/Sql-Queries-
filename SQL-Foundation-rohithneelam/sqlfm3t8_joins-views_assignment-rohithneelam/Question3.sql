
-- 3. Write a query that lists each order number followed by the name of the customer who made that order.
SELECT O.ONUM,C.CNAME FROM Orders O,Customer C WHERE O.CNUM=C.CNUM;

