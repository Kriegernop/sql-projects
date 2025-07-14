-- Q6: Product Subscription Performance Analysis
-- Business Question: "What are the subscription volumes, usage patterns, and satisfaction levels for each product?"
-- Table: customer_products
-- Daily Use: Product portfolio optimization, customer satisfaction monitoring
SELECT product_id,
       COUNT(product_id) AS numb_subscriptions,
       ROUND(AVG(monthly_usage_score),1) AS avg_usage_score,
       ROUND(AVG(satisfaction_rating),1) AS avg_satisf_rating,
       MIN(monthly_usage_score) AS min_usage_score,
       MAX(monthly_usage_score) AS max_usage_score,
       MIN(satisfaction_rating) AS min_satisf_rating,
       MAX(satisfaction_rating) AS max_satisf_rating
FROM customer_products
GROUP BY product_id
ORDER BY avg_satisf_rating DESC;
