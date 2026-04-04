# Set up 
USE nba;

DROP TABLE IF EXISTS all_seasons;

CREATE TABLE all_seasons (
	id INT AUTO_INCREMENT PRIMARY KEY UNIQUE,
	player_name VARCHAR(50),
	team_abbreviation VARCHAR(10),
	age INT,
	player_height INT,
	player_weight FLOAT,
	college VARCHAR(50),
	country VARCHAR(50),
	draft_year VARCHAR(20),
	draft_round VARCHAR(20),
	draft_number VARCHAR(20),
	games_played FLOAT,
	points_per_game FLOAT,
	rebound FLOAT,
	assist_per_game FLOAT,
	net_rating FLOAT,
	offensive_rebound_pct FLOAT,
	defensive_rebound_pct FLOAT,
	usage_pct FLOAT,
    true_shooting_pct FLOAT,
    assist_pct FLOAT,
	season VARCHAR(20)
);


LOAD DATA LOCAL INFILE 'D:/study/MBA/SQL/project/NBA Player Stats/all_seasons.csv' INTO TABLE all_seasons
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT COUNT(*)
FROM all_seasons
;


SELECT *
FROM all_seasons
;

SELECT player_name,games_played,points_per_game,season
FROM all_seasons
;