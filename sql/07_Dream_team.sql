SELECT player_name,
    ROUND(AVG(points_per_game), 2) AS avg_points,
    ROUND(AVG(rebound), 2) AS avg_rebounds,
    ROUND(AVG(assist_per_game), 2) AS avg_assists,
    ROUND(AVG(true_shooting_pct), 3) AS avg_ts,
    ROUND(
        (AVG(points_per_game) * 0.40) + 
        ((AVG(rebound) + AVG(assist_per_game)) * 0.30) + 
        (AVG(true_shooting_pct) * 100 * 0.30), 2
    ) AS dream_score
FROM all_seasons
WHERE games_played >= 65
GROUP BY player_name
ORDER BY dream_score DESC
LIMIT 20;