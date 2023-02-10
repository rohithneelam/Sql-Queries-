
-- 2. Write a query that joins the Customer table to itself to find all pairs of customers served by a single salesperson.
SELECT C1.CNAME,C2.CNAME,S.SNAME FROM Customer C1,Customer C2,Salespeople S WHERE C1.SNUM=C2.SNUM AND C1.SNUM=S.SNUM;

