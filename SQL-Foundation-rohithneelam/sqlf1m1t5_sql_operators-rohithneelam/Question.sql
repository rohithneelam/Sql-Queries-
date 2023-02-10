-- 1. Write a SQL query to get salespeople whose city is London and comm is more than 0.12.
select * from Salespeople where city="London" and  comm>0.12; 

-- 2. Write a SQL query to get salespeople from San Jose and London cities.
select * from salespeople where city='London' or city='San Jose';

-- 3. Write a SQL query to get customer information whose customer name starts with c.
select * from customer where cname like 'c%';

-- 4. Write a SQL query to get customer information whose customer name contains 'a' and rating is more than 150. 

 select *from customer where cname like 'a%' and rating>150;

 

--5. Write a SQL query to get all the orders on 2022-01-13.

 select * from orders where odate='2022-01-13';

 

--6. Write a SQL query to get all the orders whose order amount is more than 200 
select * from orders where amt>200;
