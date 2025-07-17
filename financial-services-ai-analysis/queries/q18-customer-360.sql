-- Q18: Complete Customer 360 Analysis
-- Business Question: "Create complete customer view: demographics, accounts, AI usage, and product subscriptions?"
-- Daily Use: Executive customer reviews, strategic account management
SELECT customers.customer_id,
       customers.country,
       customers.customer_segment,
       accounts.account_type,
       ai_interactions.interaction_outcome,
       products.product_name
FROM customers
LEFT JOIN accounts ON customers.customer_id = accounts.customer_id
LEFT JOIN ai_interactions ON customers.customer_id = ai_interactions.customer_id
LEFT JOIN customer_products ON customers.customer_id = customer_products.customer_id
LEFT JOIN products ON customer_products.product_id = products.product_id
ORDER BY customers.annual_income DESC;
