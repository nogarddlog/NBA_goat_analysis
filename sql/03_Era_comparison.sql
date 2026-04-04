################
##  Era Comparisons
################
SELECT 
    CASE 
        WHEN season LIKE '199%' THEN '1990s'
        WHEN season LIKE '200%' THEN '2000s'
        WHEN season LIKE '201%' THEN '2010s'
        WHEN season LIKE '202%' THEN '2020s'
    END AS era,
    ROUND(AVG(player_height), 1) AS avg_height,
    ROUND(AVG(player_weight), 1) AS avg_weight,
    ROUND(AVG(points_per_game), 2) AS avg_points,
    ROUND(AVG(rebound), 2) AS avg_rebounds,
    ROUND(AVG(assist_per_game), 2) AS avg_assists
FROM all_seasons
GROUP BY era
ORDER BY era;