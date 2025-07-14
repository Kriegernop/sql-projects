--Q3: Account Balance Overview
--Business Question: "What are the account type distributions and average balances by account type?"
--Table: accounts
--Daily Use: Portfolio value monitoring, wealth distribution analysis
SELECT account_type, 
       COUNT(*) AS numb_accounts, 
       MIN(current_balance) AS min_curr_balance, 
       MAX(current_balance) AS max_curr_balance, 
       ROUND(AVG(current_balance),0) AS avg_curr_balance, 
       SUM(current_balance) AS total_amount
FROM accounts
GROUP BY account_type
ORDER BY total_amount DESC;
