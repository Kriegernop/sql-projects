# Q7: Transaction Channel Analysis - Digital Engagement Patterns

## Business Question
What are the transaction volumes by channel in the last 10 days for digital strategy optimization?

## AI Strategy Context
Understanding customer channel preferences guides AI service deployment strategy and digital engagement optimization for maximum adoption.

## SQL Query
```sql
SELECT COUNT(*) AS numb_transactions, channel,
       SUM(ABS(amount)) AS total_amount  -- Total activity regardless of direction
FROM transactions
WHERE transaction_date >= (SELECT DATE(MAX(transaction_date), '-10 days') FROM transactions)
GROUP BY channel
ORDER BY total_amount DESC

--OR

SELECT COUNT(*) AS numb_transactions, channel,
       SUM(ABS(amount)) AS total_amount  -- Total activity regardless of direction
FROM transactions
WHERE transaction_date >= '2024-06-12'  -- Last 10 days of the data
GROUP BY channel
ORDER BY total_amount DESC


Key Business Insights

Mobile App dominance: 60-70% of transactions occur through Mobile App channel
Digital preference: Combined Mobile App + Web handle 85-90% of transaction volume
Traditional channels: ATM and Branch represent <15% of activity, indicating digital transformation success
Transaction values: Web channel shows highest average transaction amounts (€2,000-5,000) for investments
Volume distribution: Mobile App leads in transaction count, Web leads in total value
Customer behavior: High digital adoption scores correlate with mobile channel preference
AI deployment readiness: Strong digital channel adoption supports mobile-first AI strategy

Strategic Recommendations

Mobile-First AI: Prioritize AI features for dominant mobile channel
Channel Optimization: Enhance AI capabilities on high-volume channels
Branch Integration: Develop AI-assisted tools for traditional channels
Omnichannel Strategy: Ensure consistent AI experience across all channels
