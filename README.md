# NBA GOAT Analysis

**Tools:** SQL (MySQL) 
**Skills:** Window Functions | CTEs | Aggregation | Weighted Scoring | Era Analysis

---

## Project Overview

Fans are always debating who is the GOAT. This project brings data into
the conversation. Using an NBA player stats dataset covering 1996 to
2023, this analysis ranks season leaders, compares playing eras, identifies
top-performing teams, and builds a weighted MVP index to find the best
player each season.

Dataset: 12,844 player-season records across 26 seasons.

---

## Questions Answered

- Which players led their seasons in scoring, rebounding, and assists?
- How do players from different eras compare in size and performance?
- Which teams consistently produce top performers?
- How do rookies compare to veterans in contribution?
- Based on the data, who deserves the MVP crown each season?

---

## Season Leaders

### Scoring Leaders (selected seasons)

| Season | Player | Team | Points Per Game |
|---|---|---|---|
| 1996-97 | Michael Jordan | CHI | 29.6 |
| 2005-06 | Kobe Bryant | LAL | 35.4 |
| 2007-08 | LeBron James | CLE | 30.0 |
| 2013-14 | Kevin Durant | OKC | 32.0 |
| 2018-19 | James Harden | HOU | 36.1 |
| 2022-23 | Joel Embiid | PHI | 33.1 |

### Rebounding Leaders (selected seasons)

| Season | Player | Team | Rebounds Per Game |
|---|---|---|---|
| 1997-98 | Dennis Rodman | CHI | 15.0 |
| 2002-03 | Ben Wallace | DET | 15.4 |
| 2010-11 | Kevin Love | MIN | 15.2 |
| 2017-18 | Andre Drummond | DET | 16.0 |
| 2021-22 | Rudy Gobert | UTA | 14.7 |

### Assists Leaders (selected seasons)

| Season | Player | Team | Assists Per Game |
|---|---|---|---|
| 1996-97 | Mark Jackson | IND | 11.4 |
| 2006-07 | Steve Nash | PHX | 11.6 |
| 2007-08 | Chris Paul | NOP | 11.6 |
| 2015-16 | Rajon Rondo | SAC | 11.7 |
| 2016-17 | James Harden | HOU | 11.2 |

---

## Era Comparison

Average player size and performance across four decades.

| Era | Avg Height (cm) | Avg Weight (kg) | Avg Points | Avg Rebounds | Avg Assists |
|---|---|---|---|---|---|
| 1990s | 200.9 | 100.5 | 7.83 | 3.54 | 1.79 |
| 2000s | 201.1 | 101.4 | 8.10 | 3.58 | 1.78 |
| 2010s | 200.7 | 100.0 | 8.27 | 3.55 | 1.83 |
| 2020s | 198.9 | 97.8 | 8.75 | 3.54 | 1.97 |

**Key insight:** Modern players (2020s) are lighter and shorter on average,
yet score more points and dish out more assists. This reflecting a shift toward
pace, spacing, and skill over size.

---

## Teams That Consistently Produce Top Performers

Top 10 teams by number of seasons with at least one 20+ point scorer
(minimum 65 games played).

| Team | Seasons With Top Performer | Total Top Performers |
|---|---|---|
| DAL | 18 | 20 |
| MIN | 18 | 20 |
| NYK | 16 | 19 |
| SAS | 16 | 18 |
| TOR | 16 | 19 |
| HOU | 16 | 16 |
| CHI | 16 | 19 |
| CLE | 16 | 19 |
| SAC | 16 | 19 |
| BOS | 15 | 20 |

---

## Rookies vs Veterans

Comparing average contribution by career stage (minimum 40 games played).

| Career Stage | Avg Points | Avg Rebounds | Avg Assists | Player Count |
|---|---|---|---|---|
| Rookie (Year 1) | 8.40 | 3.67 | 1.77 | 1,546 |
| Early Career (Years 2-4) | 11.03 | 4.51 | 2.25 | 2,204 |
| Veteran (Year 5+) | 11.22 | 4.66 | 2.54 | 3,978 |

**Key insight:** Performance improves steadily with experience. Veterans
contribute more across all categories, but the jump from Rookie to Early
Career is the largest single improvement.

---

## MVP Weighted Index

Formula: **(Points x 0.40) + ((Rebounds + Assists) x 0.30) + (TS% x 100 x 0.30)**

Minimum 65 games played per season.

| Season | Player | Team | Points | Rebounds | Assists | TS% | MVP Score |
|---|---|---|---|---|---|---|---|
| 1996-97 | Karl Malone | UTA | 27.4 | 9.9 | 4.5 | 0.600 | 33.28 |
| 1997-98 | Karl Malone | UTA | 27.0 | 10.3 | 3.9 | 0.597 | 32.97 |
| 1999-00 | Shaquille O'Neal | LAL | 29.7 | 13.6 | 3.8 | 0.578 | 34.44 |
| 2000-01 | Shaquille O'Neal | LAL | 28.7 | 12.7 | 3.7 | 0.574 | 33.62 |
| 2001-02 | Shaquille O'Neal | LAL | 27.2 | 10.7 | 3.0 | 0.590 | 32.69 |
| 2002-03 | Tracy McGrady | ORL | 32.1 | 6.5 | 5.5 | 0.564 | 33.36 |
| 2003-04 | Kevin Garnett | MIN | 24.2 | 13.9 | 5.0 | 0.547 | 31.76 |
| 2004-05 | Amar'e Stoudemire | PHX | 26.0 | 8.9 | 1.6 | 0.617 | 32.06 |
| 2005-06 | Kobe Bryant | LAL | 35.4 | 5.3 | 4.5 | 0.559 | 33.87 |
| 2006-07 | Kobe Bryant | LAL | 31.6 | 5.7 | 5.4 | 0.580 | 33.37 |
| 2007-08 | LeBron James | CLE | 30.0 | 7.9 | 7.2 | 0.568 | 33.57 |
| 2008-09 | LeBron James | CLE | 28.4 | 7.6 | 7.2 | 0.591 | 33.53 |
| 2009-10 | LeBron James | CLE | 29.7 | 7.3 | 8.6 | 0.604 | 34.77 |
| 2010-11 | LeBron James | MIA | 26.7 | 7.5 | 7.0 | 0.594 | 32.85 |
| 2011-12 | Kevin Durant | OKC | 28.0 | 8.0 | 3.5 | 0.610 | 32.95 |
| 2012-13 | LeBron James | MIA | 26.8 | 8.0 | 7.3 | 0.640 | 34.51 |
| 2013-14 | Kevin Durant | OKC | 32.0 | 7.4 | 5.5 | 0.635 | 35.72 |
| 2014-15 | James Harden | HOU | 27.4 | 5.7 | 7.0 | 0.605 | 32.92 |
| 2015-16 | Stephen Curry | GSW | 30.1 | 5.4 | 6.7 | 0.669 | 35.74 |
| 2016-17 | James Harden | HOU | 29.1 | 8.1 | 11.2 | 0.613 | 35.82 |
| 2017-18 | James Harden | HOU | 30.4 | 5.4 | 8.8 | 0.619 | 34.99 |
| 2018-19 | James Harden | HOU | 36.1 | 6.6 | 7.5 | 0.616 | 37.15 |
| 2019-20 | James Harden | HOU | 34.3 | 6.6 | 7.5 | 0.626 | 36.73 |
| 2020-21 | Nikola Jokic | DEN | 26.4 | 10.8 | 8.3 | 0.647 | 35.70 |
| 2021-22 | Nikola Jokic | DEN | 27.1 | 13.8 | 7.9 | 0.661 | 37.18 |
| 2022-23 | Nikola Jokic | DEN | 24.5 | 11.8 | 9.8 | 0.701 | 37.31 |

**Key insight:** Nikola Jokic holds the three highest MVP scores in the
dataset (2020-21, 2021-22, 2022-23), driven by elite efficiency and
all-around production. James Harden dominates the late 2010s scoring era.
LeBron James appears most consistently across multiple seasons.

**Note on Michael Jordan:**

Jordan led all scorers in 1996-97 (29.6 pts) and 1997-98 (28.7 pts)
but does not appear in the MVP index results. Here is why:

| Player | Season | Points | Rebounds | MVP Score |
|---|---|---|---|---|
| Michael Jordan | 1996-97 | 29.6 | 5.9 | 31.93 |
| Karl Malone | 1996-97 | 27.4 | 9.9 | 33.28 |

Jordan scored more points but Malone's rebounding (9.9 vs 5.9 per game)
made the difference. Since rebounds and assists together carry 30% of the
weighted score, Malone's all-around numbers gave him a higher total.

Jordan remains the scoring leader of his era. This result shows that the
formula rewards complete statistical production, not just pure scoring.


---

## Dream Team

Since the dataset does not include position data, the top 20 all-time
performers were identified using the same weighted scoring formula.
Positions were assigned based on each player's known primary position.

| Position | Player | Avg Points | Avg Rebounds | Avg Assists | Avg TS% | Dream Score |
|---|---|---|---|---|---|---|
| PG | Kevin Johnson | 20.1 | 3.6 | 9.3 | 0.631 | 30.84 |
| SG | Kobe Bryant | 25.0 | 5.2 | 4.7 | 0.550 | 29.48 |
| SF | LeBron James | 27.0 | 7.4 | 7.4 | 0.586 | 32.82 |
| PF | Kevin Durant | 27.2 | 7.0 | 4.1 | 0.609 | 32.47 |
| C | Joel Embiid | 31.9 | 11.0 | 4.2 | 0.635 | 36.35 |

> Note: Position data was not available in the dataset. Positions were
> assigned based on each player's known primary position during their career.

---

## Repository Contents

| File | Description |
|---|---|
| `sql/01_Setup.sql` | Database and table setup, data loading |
| `sql/02_Season_leaders.sql` | Season scoring, rebounding and assists leaders |
| `sql/03_Era_comparison.sql` | Average size and performance by decade |
| `sql/04_Team_analysis.sql` | Teams consistently producing top performers |
| `sql/05_rookies_veterans.sql` | Performance comparison by career stage |
| `sql/06_MVP.sql` | Weighted MVP score by season |
| `sql/07_Dream_team.sql` | All-time top performers ranking |
| `data/all_seasons.csv` | Raw NBA player stats dataset |
