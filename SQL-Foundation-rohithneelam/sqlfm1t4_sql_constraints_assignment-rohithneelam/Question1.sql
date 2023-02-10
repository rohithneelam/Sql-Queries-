-- 1.Write a SQL query to create a table called Employee that contains five columns as emp_id,emp_name,emp_dept,emp_phoneno,emp_address and apply not null constraint on emp_phoneno, emp_dept and primary key constraint on emp_id columns.
create table Employee(emp_id int not null primary key,
                   emp_name varchar(20),
                   emp_dept varchar(20) not null,
                   emp_phoneno bigint not null,
                   emp_address varchar(25));
                   
desc Employee
