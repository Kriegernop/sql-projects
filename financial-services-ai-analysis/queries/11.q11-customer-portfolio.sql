-- Q11: Customer Account Portfolio View
-- Business Question: "Show customer names with their account types and balances?"
-- Tables: customers INNER JOIN accounts
-- Daily Use: Customer service inquiries, account management
SELECT customers.first_name,
       customers.last_name,
       accounts.account_type,
       accounts.current_balance
FROM customers
INNER JOIN accounts ON customers.customer_id = accounts.customer_id
ORDER BY customers.last_name, accounts.current_balance DESC
LIMIT 10
