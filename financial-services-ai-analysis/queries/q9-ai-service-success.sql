-- Q9: AI Service Success Rate Analysis
-- Business Question: "Calculate success rates by AI service type (completed vs total interactions)?"
-- Table: ai_interactions
-- Daily Use: AI service optimization, performance monitoring
SELECT ai_service_type,
       COUNT(*) AS total_interactions,
       SUM(interaction_outcome = 'Completed') AS completed_interactions,
       ROUND(SUM(interaction_outcome = 'Completed') * 100.0 / COUNT(*), 1) AS completion_rate
FROM ai_interactions
GROUP BY ai_service_type
ORDER BY completion_rate DESC;
