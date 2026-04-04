##############################################################################
#### Rank players in each season by points, rebounds, assists per game.  #####
##############################################################################

# Identify the player who score the most each season
SELECT player_name,games_played,points_per_game,season
FROM
(SELECT  *,
RANK() OVER(PARTITION BY season ORDER BY points_per_game DESC) AS rank_point
FROM all_seasons) AS high_points
WHERE rank_point = 1 AND games_played > 65
;

# Identify the player who rebound the most each season
SELECT player_name,games_played,rebound,season
FROM
(SELECT  *,
RANK() OVER(PARTITION BY season ORDER BY rebound DESC) AS rank_rebound
FROM all_seasons) AS high_rebound
WHERE rank_rebound = 1 AND games_played > 65
;

# Identify the player who assist the most each season
SELECT player_name,games_played,assist_per_game,season
FROM
(SELECT  *,
RANK() OVER(PARTITION BY season ORDER BY assist_per_game DESC) AS rank_ast
FROM all_seasons) AS high_ast
WHERE rank_ast = 1 AND games_played > 65
;