-- Q16: Spending Behavior by Customer Segment
-- Business Question: "Analyze transaction volumes and amounts by customer segment and country?"
-- Daily Use: Market analysis, geographic strategy, customer behavior insights
SELECT customers.customer_segment,
       customers.country,
       COUNT(transactions.transaction_id) AS numb_transactions,
       SUM(ABS(transactions.amount)) AS total_amount_transactions
FROM customers
LEFT JOIN accounts ON customers.customer_id = accounts.customer_id
LEFT JOIN transactions ON accounts.account_id = transactions.account_id
GROUP BY customers.customer_segment, customers.country
ORDER BY total_amount_transactions DESC;
