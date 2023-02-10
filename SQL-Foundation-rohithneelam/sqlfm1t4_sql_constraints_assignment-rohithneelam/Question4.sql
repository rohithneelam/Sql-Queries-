-- 4. Write a SQL queries to create two tables called Salespeople and customer with following columns

   --Salespeople:
     --Snum,Sname,city and mobile
   --Customer:
     --cid,cname, city, rating and Snum
   --a. make Snum as foreign key in customer table.

-- Sales people 
create table Salespople (Snum int,
                  Sname varchar(24),
                  city varchar(24),
                   mobile varchar(30));

-- Customer 
create table Customer Customer (cid int, 
                                cname varchar(39),
                                city varchar(39),                 
                                 rating int,
                                  Snum int,
                                foreign key (snum) references 
                                Salespeole(snum));