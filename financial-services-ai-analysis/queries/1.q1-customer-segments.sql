-- Q1: Customer Segment Distribution Analysis
-- Purpose: Market composition for AI service targeting
SELECT customer_segment, 
       COUNT(customer_id) AS numb_customers, 
       AVG(annual_income) AS avg_income,
       ROUND(COUNT(customer_id) * 100.0 / (SELECT COUNT(*) FROM customers), 1) AS percentage
FROM customers 
GROUP BY customer_segment
ORDER BY avg_income DESC;
