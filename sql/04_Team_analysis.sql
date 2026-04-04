################
##Teams , Consistently Produce Top Performers
################
SELECT team_abbreviation,
    COUNT(DISTINCT season) AS seasons_with_top_performer,
    COUNT(*) AS total_top_performers
FROM all_seasons
WHERE points_per_game >= 20 AND games_played >= 65
GROUP BY team_abbreviation
ORDER BY seasons_with_top_performer DESC
LIMIT 10;