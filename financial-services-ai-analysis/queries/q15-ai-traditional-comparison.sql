-- Q15: AI vs Traditional Product Preferences by Customer Segment
-- Business Question: "Compare AI-enhanced vs traditional product adoption across customer segments?"
-- Daily Use: AI strategy effectiveness measurement, product roadmap decisions
SELECT products.product_name,
       products.ai_enhanced,
       COUNT(customer_products.subscription_date) AS numb_subs,
       ROUND(AVG(customer_products.monthly_usage_score),1) AS avg_score,
       customers.customer_segment
FROM customers
LEFT JOIN customer_products ON customers.customer_id = customer_products.customer_id
LEFT JOIN products ON customer_products.product_id = products.product_id
GROUP BY customers.customer_segment, products.product_name, products.ai_enhanced
ORDER BY numb_subs DESC;

-- Shows which specific products drive AI adoption in each customer segment (product-level detail)

--OR

SELECT customers.customer_segment,
       products.ai_enhanced,
       COUNT(customer_products.subscription_date) AS numb_subs,
       ROUND(AVG(customer_products.monthly_usage_score),1) AS avg_score
FROM customers
LEFT JOIN customer_products ON customers.customer_id = customer_products.customer_id
LEFT JOIN products ON customer_products.product_id = products.product_id
GROUP BY customers.customer_segment, products.ai_enhanced
ORDER BY numb_subs DESC;

--Compares AI vs traditional product adoption volumes across customer segments (segment-level summary)

--OR

SELECT customers.customer_segment,
       ROUND(SUM(products.ai_enhanced = 1) * 100.0 / COUNT(*), 1) AS ai_enhanced_rate,
       ROUND(SUM(products.ai_enhanced = 0) * 100.0 / COUNT(*), 1) AS not_ai_enhanced_rate,
       COUNT(customer_products.subscription_date) AS numb_subs
FROM customers
LEFT JOIN customer_products ON customers.customer_id = customer_products.customer_id
LEFT JOIN products ON customer_products.product_id = products.product_id
GROUP BY customers.customer_segment
ORDER BY numb_subs DESC;

--Calculates AI adoption percentage rates by customer segment for executive reporting (strategic KPI focus)
