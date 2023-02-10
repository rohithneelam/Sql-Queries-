-- 2. Write a query to start a transaction that all the customers should be credited with 10.6% bonus to their account from the SBI and PNB banks.
START TRANSACTION;

 

UPDATE SBI
SET balance = balance * 1.106;

 

UPDATE PNB
SET balance = balance * 1.106;

 

COMMIT;
