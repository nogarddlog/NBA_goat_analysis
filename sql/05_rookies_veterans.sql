################
#Rookies vs Veterans
################
SELECT 
    CASE 
        WHEN (SUBSTRING(season, 1, 4) - draft_year) <= 1 THEN 'Rookie'
        WHEN (SUBSTRING(season, 1, 4) - draft_year) <= 4 THEN 'Early Career'
        ELSE 'Veteran'
    END AS career_stage,
    ROUND(AVG(points_per_game), 2) AS avg_points,
    ROUND(AVG(rebound), 2) AS avg_rebounds,
    ROUND(AVG(assist_per_game), 2) AS avg_assists,
    COUNT(*) AS player_count
FROM all_seasons
WHERE draft_year NOT IN ('Undrafted') 
    AND games_played >= 40
GROUP BY career_stage;