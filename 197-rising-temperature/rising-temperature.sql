# Write your MySQL query statement below
/*
SELECT w2.id as "ID"
FROM weather w1
JOIN weather w2 ON w1.recorddate=w2.recorddate-interval '1 day'
where w1.temperature y w2.temperature
*/

SELECT w2.id as ID
FROM weather w1
JOIN weather w2 
ON w1.recorddate = DATE_ADD(w2.recorddate, INTERVAL -1 day)
WHERE w1.temperature < w2.temperature
    