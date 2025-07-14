# Q1: Customer Segment Distribution Analysis

## Business Question
What is our customer base composition and average income by segment?

## Strategy Context
Understanding customer segments to design targeted AI services and pricing strategies for European digital bank expansion.

## SQL Query
```sql
SELECT customer_segment, 
       COUNT(customer_id) AS numb_customers, 
       AVG(annual_income) AS avg_income,
       ROUND(COUNT(customer_id) * 100.0 / (SELECT COUNT(*) FROM customers), 1) AS percentage
FROM customers 
GROUP BY customer_segment
ORDER BY avg_income DESC;

Key Business Insights

Premium segment dominance: 45% of customer base with 2.3x higher income than Standard
Clear income stratification: €96K vs €42K vs €26K shows distinct market tiers
AI service opportunity: Premium customers can afford €25-50/month AI services
Balanced market: 85% of customers in Premium/Standard segments

Strategic Recommendations

Premium Focus: Develop AI wealth management and investment advisory (€25-50/month)
Standard Upselling: AI budgeting tools to migrate customers to Premium tier
Basic Retention: Simple AI financial education to prevent churn
Tiered Pricing: Align AI service costs with income segments
