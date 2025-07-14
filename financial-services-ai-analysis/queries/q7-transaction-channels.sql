-- Q7: Recent Transaction Patterns
-- Business Question: "What are the transaction volumes by channel in the last 10 days, ordered by total amount?"
-- Table: transactions
-- Daily Use: Channel strategy, digital engagement monitoring
SELECT COUNT(*) AS numb_transactions, channel,
       SUM(ABS(amount)) AS total_amount  -- Total activity regardless of direction
FROM transactions
WHERE transaction_date >= (SELECT DATE(MAX(transaction_date), '-10 days') FROM transactions)
GROUP BY channel
ORDER BY total_amount DESC

--OR

SELECT COUNT(*) AS numb_transactions, channel,
       SUM(ABS(amount)) AS total_amount  -- Total activity regardless of direction
FROM transactions
WHERE transaction_date >= '2024-06-12'  -- Last 10 days of the data
GROUP BY channel
ORDER BY total_amount DESC;
