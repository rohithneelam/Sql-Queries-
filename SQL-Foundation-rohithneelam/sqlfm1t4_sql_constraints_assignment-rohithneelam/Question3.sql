--3. Write a SQL query to create a table called orders that contains four columns as oid,order_amt,Order_date,customer_id and apply following constraints.
-- a. Primary key constraint on oid 
 --b. Not null constraint on order_date
 --c. unique key constraint on customer_id
 --d. set default order_amt is 0(zero), if user does not enter order_amt then zero should be inserted.
 create table orders (oid int not null Primary key,
                     order_amt decimal(5,3) default 0 ,
                    Order_date date not null,
                    customer_id int unique);
                    desc orders 
