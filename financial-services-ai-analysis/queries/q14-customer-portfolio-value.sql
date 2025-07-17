-- Q14: Customer Total Portfolio Value
-- Business Question: "Calculate total account balances per customer with demographic details?"
-- Daily Use: Wealth management prioritization, VIP identification
SELECT customers.customer_id,
       customers.first_name,
       customers.last_name,
       customers.country,
       customers.city,
       SUM(accounts.current_balance) AS total_balance
FROM customers
LEFT JOIN accounts ON customers.customer_id = accounts.customer_id
GROUP BY customers.customer_id, customers.first_name,  customers.last_name,customers.country, customers.city
ORDER BY total_balance DESC;
