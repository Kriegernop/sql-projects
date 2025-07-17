# Q14: Customer Total Portfolio Value

## Business Question
Calculate total account balances per customer with demographic details for wealth management prioritization.

## AI Strategy Context
Customer lifetime value analysis enables VIP identification for premium AI services and strategic account management resource allocation.

## SQL Query
```sql
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

Key Business Insights

Customer wealth distribution reveals VIP tier structure
Geographic wealth concentration patterns
Complete customer portfolio visibility for relationship management

Strategic Recommendations

VIP AI Services: Develop premium AI offerings for top-tier customers
Geographic Strategy: Focus AI investment in high-wealth markets
Relationship Management: Prioritize advisor resources by customer value
Cross-Selling: Target high-value customers for additional AI services
