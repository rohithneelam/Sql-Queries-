--1. Find all rows from the Customers table for which the salesperson number is 1001.
select * from Customer where snum=1001;
--2. Write a query that produces all pairs of orders by a given customer. Name that customer and eliminate duplicates.
select c.cname,o.onum from Customer c,Orders o where c.cnum=o.cnum;

 


--3. Find the total amount in Orders for each salesperson for whom this total is greater than the amount of the largest order in the table.
select * from Customer where rating>200;

 


--4. Write a query that produces the names and ratings of all customers of all who have above average orders.
select distinct c.cname,c.RATING from Customer c, Orders o where AMT> (select avg(AMT)from Orders);
