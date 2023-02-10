-- 1. Write a query to start a transaction where ICICI bank should be credited with 50% of amount from Haiyathi’s account.
START TRANSACTION;

 

UPDATE Haiyathi
SET balance = balance - (balance * 0.5)
WHERE account_number = 'HAI123';

 

INSERT INTO ICICI (account_number, credit)
SELECT 'ICI456', balance * 0.5
FROM Haiyathi
WHERE account_number = 'HAI123';

 

COMMIT;