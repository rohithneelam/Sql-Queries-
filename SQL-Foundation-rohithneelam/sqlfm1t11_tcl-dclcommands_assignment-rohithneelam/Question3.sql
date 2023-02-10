-- 3. Write a query to save both the transactions and display all the fields from both the tables.

 

  START TRANSACTION;

 

SELECT * FROM SBI;
SELECT * FROM PNB;

 

COMMIT;
