-- Q17: AI Service Success Rates by Country
-- Business Question: "Compare AI interaction success rates and satisfaction by country?"
-- Daily Use: Geographic AI service optimization, market-specific improvements
SELECT customers.country,
       ROUND(SUM(ai_interactions.interaction_outcome = 'Completed') * 100.0 / COUNT(*), 1) AS interaction_success_rate,
       ROUND(AVG(ai_interactions.customer_satisfaction),1) AS avg_satisfaction
FROM customers
LEFT JOIN ai_interactions ON customers.customer_id = ai_interactions.customer_id
GROUP BY customers.country
ORDER BY interaction_success_rate DESC;
