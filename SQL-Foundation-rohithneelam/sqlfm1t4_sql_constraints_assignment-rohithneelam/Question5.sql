                                                                                                 
                                                                                                 
         -- 5. Write a SQL query to create a table called Students with five columns like
    --Sid, sname, city, marks, mobile

   -- a. Apply primary key constraint on Sid
   -- b. marks coloumn should allow more than 60 score, add constraint for marks column

create table Students(sid int not null primary key,
                      sname varchar(23),
                       city varchar(24),
                        marks int, check (marks>=60),
                         mobile varchar(23));