-- Write a  query to update emp_address to hyderabad ,joiningdate to 12-02-2022 in Employee table where employee_id=123.

update Employee
set emp_adress  = "Hyderabad",
joiningdate = "2022-02-12"
where employee_id = 123;