# Q2: AI Consent Analysis by Customer Segment

## Business Question
What percentage of customers have given AI consent by segment for compliance and market sizing?

## AI Strategy Context
Regulatory compliance (EU AI Act) requires explicit consent. Understanding consent patterns by segment determines addressable market for AI services.

## SQL Query
```sql
SELECT customer_segment,
       SUM(ai_consent) AS customers_with_consent,
       COUNT(customer_id) AS total_customers,
       ROUND(SUM(ai_consent) * 100.0 / COUNT(customer_id), 1) AS consent_percentage
FROM customers
GROUP BY customer_segment
ORDER BY consent_percentage DESC;

Alternative:
SELECT ai_consent, 
       COUNT(customer_id) AS numb_customers,ROUND(COUNT(customer_id) * 100.0 / (SELECT COUNT(*) FROM customers), 1) AS percentage
FROM customers
GROUP BY ai_consent
ORDER BY ai_consent DESC;

Key Business Insights

Overall consent rate: 75% of customers (15 out of 20)
Compliance readiness: Strong consent foundation for AI deployment

Strategic Recommendations

Target high-consent segments for initial AI service rollout
Consent improvement campaigns for lower-adopting segments
Segment-specific AI positioning based on consent patterns
Regulatory compliance strategy aligned with consent rates
