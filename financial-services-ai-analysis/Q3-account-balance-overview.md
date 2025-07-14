# Q3: Account Balance Overview - Portfolio Value Assessment

## Business Question
What are the minimum, maximum, and average account balances across all accounts?

## AI Strategy Context
Understanding wealth distribution helps design AI services for different balance tiers and identify high-value customers for premium AI offerings.

## SQL Query
```sql
SELECT account_type, 
       COUNT(*) AS numb_accounts, 
       MIN(current_balance) AS min_curr_balance, 
       MAX(current_balance) AS max_curr_balance, 
       ROUND(AVG(current_balance),0) AS avg_curr_balance, 
       SUM(current_balance) AS total_amount
FROM accounts
GROUP BY account_type
ORDER BY total_amount DESC;

Key Business Insights

Wide balance range: €288K spread from debt to high-value investments
Healthy average: €38K average suggests middle-to-upper income customer base
Portfolio scale: €1.4M total assets under management
Credit exposure: Negative balances indicate credit products (debt management opportunity)

Strategic Recommendations

High-Value AI: Target €100K+ accounts for premium wealth management AI
Mid-Tier Services: €10K-€100K accounts for AI budgeting and investment tools
Debt Management AI: Negative balance accounts for AI-driven debt optimization
Portfolio Growth: AI savings optimization to increase average balances

