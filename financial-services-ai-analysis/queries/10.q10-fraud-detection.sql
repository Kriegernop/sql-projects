-- Q10: Transaction Fraud Detection Analysis
-- Business Question: "Compare AI-flagged vs normal transactions: count, average amounts, and channel distribution?"
-- Table: transactions
-- Daily Use: Fraud monitoring, AI algorithm performance evaluation
SELECT COUNT(*) AS numb_transactions,
       SUM(ai_flagged = 1) AS ai_flagged,
       ROUND(SUM(ai_flagged = 1) * 100.0 / COUNT(*), 1) AS ai_flagged_rate, channel,
       ROUND(AVG(ABS(amount)),0) AS avg_amount
FROM transactions
GROUP BY channel
ORDER BY avg_amount DESC;

--OR

SELECT ai_flagged,
       COUNT(*) AS transaction_count,
       ROUND(AVG(ABS(amount)), 0) AS avg_amount,
       MIN(ABS(amount)) AS min_amount,
       MAX(ABS(amount)) AS max_amount
FROM transactions
GROUP BY ai_flagged
ORDER BY ai_flagged DESC;

--OR

SELECT COUNT(*) AS numb_transactions,
       AVG(ABS(amount)) AS avg_amount,
       MIN(ABS(amount)) AS min_amount,
       MAX(ABS(amount)) AS max_amount
FROM transactions
WHERE ai_flagged=1;
