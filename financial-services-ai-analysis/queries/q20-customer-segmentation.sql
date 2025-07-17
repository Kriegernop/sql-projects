-- Q20: Advanced Customer Segmentation for AI Strategy
-- Business Question: "Segment customers by total portfolio value, AI consent, digital adoption, and current AI usage?"
-- Daily Use: Strategic AI service development, personalization algorithms, market positioning
SELECT customers.customer_id,
       customers.first_name,
       customers.last_name,
       customers.ai_consent,
       customers.digital_adoption_score,
       SUM(accounts.current_balance) AS total_portfolio_value,
       COUNT(ai_interactions.interaction_id) AS ai_usage_count,
       COUNT(customer_products.product_id) AS total_products
FROM customers
LEFT JOIN accounts ON customers.customer_id = accounts.customer_id
LEFT JOIN ai_interactions ON customers.customer_id = ai_interactions.customer_id
LEFT JOIN customer_products ON customers.customer_id = customer_products.customer_id
GROUP BY customers.customer_id, customers.first_name, customers.last_name, 
         customers.ai_consent, customers.digital_adoption_score
ORDER BY total_portfolio_value DESC, customers.digital_adoption_score DESC;
