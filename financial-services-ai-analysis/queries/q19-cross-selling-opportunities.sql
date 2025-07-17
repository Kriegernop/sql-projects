-- Q19: Product Revenue and Cross-Selling Opportunities
-- Business Question: "Identify customers with high account balances but low AI product adoption?"
-- Daily Use: Cross-selling strategy, revenue optimization, AI service targeting
SELECT customers.first_name,
       customers.last_name,
       customers.annual_income,
       SUM(accounts.current_balance) AS total_balance,
       COUNT(products.product_id) AS total_products
FROM customers
INNER JOIN accounts ON customers.customer_id = accounts.customer_id
LEFT JOIN customer_products ON customers.customer_id = customer_products.customer_id
LEFT JOIN products ON customer_products.product_id = products.product_id
WHERE customers.annual_income >= (SELECT MAX(annual_income) * 0.75 FROM customers)
  AND products.ai_enhanced = 0 
GROUP BY customers.customer_id, customers.first_name, customers.last_name, customers.annual_income
ORDER BY total_balance DESC;
