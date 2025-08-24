#!/bin/bash

# Définir la commande psql pour l'utilisateur et la base
PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"

# ---------------------------
# Exemple de requêtes
# ---------------------------

# 1. Total de buts marqués par toutes les équipes gagnantes
echo "Total goals by winning teams:"
echo "$($PSQL "SELECT SUM(winner_goals) FROM games;")"

# 2. Total de buts marqués dans tous les matchs
echo "Total goals in all games:"
echo "$($PSQL "SELECT SUM(winner_goals + opponent_goals) FROM games;")"

# 3. Moyenne de buts par match pour les gagnants
echo "Average goals by winning teams:"
echo "$($PSQL "SELECT AVG(winner_goals) FROM games;")"

# 4. Maximum de buts marqués par une équipe gagnante
echo "Most goals scored by a single team in a game:"
echo "$($PSQL "SELECT MAX(winner_goals) FROM games;")"

# 5. Nom des équipes qui ont participé à la finale de 2014
echo "Teams in 2014 Final:"
echo "$($PSQL "SELECT name FROM teams WHERE team_id IN (SELECT winner_id FROM games WHERE year=2014 AND round='Final') OR team_id IN (SELECT opponent_id FROM games WHERE year=2014 AND round='Final');")"

# 6. Gagnant de la finale 2018
echo "Winner of 2018 Final:"
echo "$($PSQL "SELECT name FROM teams WHERE team_id=(SELECT winner_id FROM games WHERE year=2018 AND round='Final');")"
