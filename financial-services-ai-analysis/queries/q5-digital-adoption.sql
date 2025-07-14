--Q5: Digital Adoption by Country
--Business Question: "Which countries have customers with digital adoption scores above 80?"
--Table: customers
--Daily Use: Geographic digital strategy, market readiness assessment
SELECT country,
       COUNT(*) AS customers_above_80,
       AVG(digital_adoption_score) AS avg_score,
       MAX(digital_adoption_score) AS max_score
FROM customers
WHERE digital_adoption_score > 80
GROUP BY country
ORDER BY avg_score DESC;
