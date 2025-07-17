-- Q12: Product Adoption Overview
-- Business Question: "Display product names with subscription counts and AI enhancement status?"
-- Daily Use: Product performance dashboards, adoption tracking
SELECT products.product_name,
       products.ai_enhanced,
       COUNT(customer_products.subscription_date) AS numb_subscriptions
FROM products
LEFT JOIN customer_products ON products.product_id = customer_products.product_id
GROUP BY products.product_name, products.ai_enhanced
ORDER BY numb_subscriptions DESC;
