-- 1. Write a query that produces all pairs of salespeople with themselves as well as duplicate rows with the order reversed.

SELECT s1.SNUM, s1.SNAME, s2.SNUM, s2.SNAME FROM Salespeople s1, Salespeople s2 WHERE s1.SNUM = s2.SNUM UNION SELECT  s2.SNAME, s1.SNUM, s1.SNAME FROM Salespeople s1

-- SECOND CASE (both of the cases works )
select s1.sname,s2.sname from salespeople s1 join salespeople s2
on  s1.snum = s2.snum;

