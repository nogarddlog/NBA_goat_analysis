################
#MVP Weighted Index
###############
SELECT season, player_name, team_abbreviation,
    points_per_game, rebound, assist_per_game, true_shooting_pct,
    mvp_score, mvp_rank
FROM (
    SELECT season, player_name, team_abbreviation,
        points_per_game, rebound, assist_per_game, true_shooting_pct,
        ROUND(
            (points_per_game * 0.40) + 
            ((rebound + assist_per_game) * 0.30) + 
            (true_shooting_pct * 100 * 0.30), 2
        ) AS mvp_score,
        RANK() OVER(PARTITION BY season ORDER BY 
            (points_per_game * 0.40) + 
            ((rebound + assist_per_game) * 0.30) + 
            (true_shooting_pct * 100 * 0.30) DESC
        ) AS mvp_rank
    FROM all_seasons
    WHERE games_played >= 65
) AS ranked
WHERE mvp_rank = 1
ORDER BY season;