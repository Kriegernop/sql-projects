--Q4: High-Value Account Analysis
--Business Question: "Show the top 10 accounts by balance and identify account types with highest average balances?"
--Table: accounts
--Daily Use: VIP customer identification, product performance
SELECT account_id, customer_id, account_type, current_balance 
FROM accounts
ORDER BY current_balance DESC
LIMIT 10

  
SELECT account_type, 
       COUNT(*) AS numb_accounts,
       ROUND(AVG(current_balance),0) AS avg_curr_balance
FROM accounts
GROUP BY account_type
ORDER BY avg_curr_balance DESC;
