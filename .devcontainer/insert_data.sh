#!/bin/bash

# Définir la commande psql pour l'utilisateur et la base
PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"

# ---------------------------
# INSÉRER LES ÉQUIPES
# ---------------------------

$PSQL "INSERT INTO teams(name) VALUES('Brazil');"
$PSQL "INSERT INTO teams(name) VALUES('Germany');"
$PSQL "INSERT INTO teams(name) VALUES('Argentina');"
$PSQL "INSERT INTO teams(name) VALUES('France');"
$PSQL "INSERT INTO teams(name) VALUES('Spain');"

# ---------------------------
# INSÉRER LES MATCHS
# ---------------------------

$PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals)
VALUES(2018, 'Final', 4, 5, 4, 2);"

$PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals)
VALUES(2014, 'Final', 1, 2, 1, 0);"

$PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals)
VALUES(2010, 'Final', 5, 3, 1, 0);"
