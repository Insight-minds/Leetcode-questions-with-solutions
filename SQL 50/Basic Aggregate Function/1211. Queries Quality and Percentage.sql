--Approach using Case When
SELECT query_name, round(AVG(rating/position),2) as quality, 
round(AVG(CASE WHEN rating<3 THEN 1 ELSE 0 END)*100,2) as poor_query_percentage
FROM Queries
WHERE query_name is not null
GROUP BY query_name

--Approach using Select subquery
SELECT
    query_name,
    ROUND(AVG(rating / position), 2) AS quality,
    ROUND(((SELECT COUNT(*) FROM Queries q2 WHERE q2.query_name = q.query_name AND q2.rating < 3) / COUNT(*) * 100), 2) AS poor_query_percentage
FROM Queries q
where query_name is not null
GROUP BY query_name
