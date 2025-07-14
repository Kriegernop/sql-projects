--Q2: AI Consent Analysis
--Business Question: "How many customers have given AI consent vs those who haven't?"
--Table: customers
--Daily Use: Compliance reporting, addressable market sizing
SELECT ai_consent, 
       COUNT(customer_id) AS numb_customers,ROUND(COUNT(customer_id) * 100.0 / (SELECT COUNT(*) FROM customers), 1) AS percentage
FROM customers
GROUP BY ai_consent
ORDER BY ai_consent DESC;

--Q2: AI Consent Deeper Analysis
--Business Question: "How many customers have given AI consent vs those who haven't - by customer segment?"
--Table: customers
--Daily Use: Compliance reporting, addressable market sizing
SELECT customer_segment, 
       SUM(ai_consent) AS customers_with_consent,
       COUNT(customer_id) AS total_customers,
       ROUND(SUM(ai_consent) * 100.0 / COUNT(customer_id), 1) AS consent_percentage
FROM customers
GROUP BY customer_segment
ORDER BY consent_percentage DESC;
