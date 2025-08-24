CREATE TABLE teams(
  team_id SERIAL PRIMARY KEY,
  name VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE games(
  game_id SERIAL PRIMARY KEY,
  year INT NOT NULL,
  round VARCHAR(50) NOT NULL,
  winner_id INT REFERENCES teams(team_id),
  opponent_id INT REFERENCES teams(team_id),
  winner_goals INT NOT NULL,
  opponent_goals INT NOT NULL
);

INSERT INTO teams(name) VALUES('Brazil');
INSERT INTO teams(name) VALUES('Germany');

INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals)
VALUES(2014, 'Final', 1, 2, 1, 0);