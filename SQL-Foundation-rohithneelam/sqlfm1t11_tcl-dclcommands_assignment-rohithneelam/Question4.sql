-- 4. Write a query to uncommit the transaction where all the customers who got 10.6% of bonus to their account from the SBI anPNB banks.
ROLLBACK TRANSACTION
WHERE EXISTS (SELECT 1 FROM customer_bonus cb
              INNER JOIN customers c ON cb.customer_id = c.id
              WHERE cb.bonus_percent = 10.6 AND c.bank IN ('SBI', 'PNB'))

