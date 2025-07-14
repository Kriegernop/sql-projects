-- Q8: Premium Customer Credit Analysis
-- Business Question: "Analyze Premium customers with credit scores between 750-850 and annual income above €80K?"
-- Table: customers
-- Daily Use: Risk assessment, premium AI service targeting
SELECT customer_id, country, credit_score, annual_income, employment_status
FROM customers
WHERE credit_score BETWEEN 750 AND 850
AND annual_income > 80000
AND customer_segment='Premium'
ORDER BY credit_score DESC;


SELECT country, 
       ROUND(AVG(credit_score),0) AS avg_credit_score,
       ROUND(AVG(annual_income),0) AS avg_annual_income
FROM customers
WHERE credit_score BETWEEN 750 AND 850
AND annual_income > 80000
AND customer_segment='Premium'
GROUP BY country
ORDER BY avg_credit_score DESC;

--Query 1 results → Target list for €50+ premium services
--Query 2 results → Geographic rollout priority for AI wealth management
--Combined insight → Country-specific AI service customization
