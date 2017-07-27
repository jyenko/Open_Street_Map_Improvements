-- Queries to be used for the database


-- Get common street abbreviations
SELECT COUNT(*) as num, value
FROM ways_tags
WHERE value like '% Dr'
GROUP BY value
ORDER BY num desc
LIMIT 10;

SELECT COUNT(*) as num, value
FROM ways_tags
WHERE value like '% Drive%'
GROUP BY value
ORDER BY num desc
LIMIT 10;

SELECT COUNT(*) as num, value
FROM ways_tags
WHERE value like '% St'
GROUP BY value
ORDER BY num desc
LIMIT 10;

SELECT COUNT(*) as num, value
FROM ways_tags
WHERE value like '% Ave'
GROUP BY value
ORDER BY num desc
LIMIT 10;


--Get info on cities
SELECT tags.value, COUNT(*) as count
FROM (SELECT * FROM nodes_tags UNION ALL
       SELECT * FROM ways_tags) tags
WHERE tags.key LIKE '%city'
GROUP BY tags.value
ORDER BY count DESC
LIMIT 35;