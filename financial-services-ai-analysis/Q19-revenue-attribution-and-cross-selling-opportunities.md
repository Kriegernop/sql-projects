# Q19: Revenue Attribution and Cross-Selling Opportunities

## Business Question
Identify customers with high account balances but low AI product adoption for cross-selling opportunities.

## AI Strategy Context
Cross-selling strategy enables revenue optimization through AI service targeting of high-value customers with growth potential.

## SQL Query
```sql
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

Key Business Insights

High-value customers using only traditional products represent premium AI opportunities
Income-balance correlation analysis for strategic customer targeting
Cross-selling pipeline identification for revenue growth

Strategic Recommendations

Premium AI Cross-Selling: Target high-balance customers for advanced AI services
Revenue Optimization: Focus AI sales efforts on proven high-value customers
Customer Migration: Develop AI adoption programs for traditional product users
Strategic Account Growth: Use existing relationships to expand AI service penetration
