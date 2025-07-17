# Q11: Customer Account Portfolio View

## Business Question
Show customer names with their account types and balances for relationship management.

## AI Strategy Context
Foundation for customer 360-degree views that AI personalization systems need. Enables relationship managers to prioritize high-value customers for AI service recommendations.

## SQL Query
```sql
SELECT customers.first_name,
       customers.last_name,
       accounts.account_type,
       accounts.current_balance
FROM customers
INNER JOIN accounts ON customers.customer_id = accounts.customer_id
ORDER BY customers.last_name, accounts.current_balance DESC
LIMIT 10;

Key Business Insights

Customer portfolio visibility enables relationship prioritization
Account type distribution shows product usage patterns
Balance hierarchy identifies VIP customers for AI service targeting

Strategic Recommendations

VIP AI Services: Target highest balance customers for premium AI wealth management
Product Cross-Selling: Identify single-account customers for portfolio expansion
Relationship Management: Use balance ranking for advisor resource allocation
