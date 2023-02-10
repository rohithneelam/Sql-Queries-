-- Table Name: Employee
-- Columns:    Employee_id, Employee_name, salary, Department_name, emp_address,  joiningdate
-- 1.Write a  query to insert 10 records in to the Employee table.

-- create  Employee table
create table Employee(emp_id int not null Primary key,
 emp_nam varchar(250),
  emp_salary double,
  emp_department_name varchar(250),
  emp_address varchar(260),
  emp_joining_date date );

-- insert values 
insert into Employee values(1,'Rohith',10000,'Trainee','Vijayawada',"2022-01-12"),
                           (2,'Suchitra',20000,'Tester','Hyderbad',"2022-02-12"),
                           (3,'Ismail',30000,'Backend','Banglore',"2022-03-12"),
                           (4,'Vamshi',40000,'Frontend', 'Ongol',"2022-04-12"),
                           (5,'Bhanu',50000,'Fullstack','Vijayawada',"2022-05-12"),
                           (6,'Gopi',60000,'Sql','Hyderbad',"2022-06-12"),
                           (7,'Harish',70000,'Junior_devoloper','Banglore',"2022-07-12"),
                           (8,'Chanukya',80000,'Junior_devoloper','Banglore',"2022-07-12"),
                           (9,'Suraj',90000,'Senior_devoloper','Ranchi',"2022-08-122"),
                           (10,'Tej',90000,'Softskills','Kakinada',"2022-03-12");
                            