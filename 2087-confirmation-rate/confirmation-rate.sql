# Write your MySQL query statement below
SELECT 
    s.user_id,
    ROUND(IFNULL(SUM(action='confirmed')/COUNT(action='confirmed'),0),2) AS "confirmation_rate"
FROM signups s
LEFT JOIN confirmations c
    ON s.user_id=c.user_id
GROUP BY 
    s.user_id