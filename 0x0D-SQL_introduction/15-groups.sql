-- Alx SQL Introduction
-- Oladipupo Ajabi
SELECT 
score, 
COUNT(score) AS number 
FROM second_table 
GROUP BY score 
ORDER BY number DESC;
