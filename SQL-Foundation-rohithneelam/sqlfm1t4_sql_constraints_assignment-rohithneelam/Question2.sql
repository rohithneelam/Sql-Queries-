-- 2.Write a SQL query to create a table called Salespeople that contains four columns as sid,sname,city,mobile and apply primary key constraint on sid and unique constraint on mobile number columns.

create table Salespeople (sid int not null primary key,
                          sname varchar(25) not null,
                          city varchar(25) not null,
                          mobile int unique );
                          desc Salespeople