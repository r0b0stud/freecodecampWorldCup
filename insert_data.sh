#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE TABLE games, teams;")
cat games.csv | while IFS="," read year round winner opponent winner_goals opponent_goals
do
if [[ $winner != winner ]]
then
  TEAM_ID_WINNER=$($PSQL "SELECT team_id FROM teams WHERE name='$winner'")
  if [[ -z $TEAM_ID_WINNER ]]
  then
    INSERT_TEAM_WINNER_RESULT=$($PSQL "INSERT INTO teams(name) VALUES ('$winner')")
    if [[ $INSERT_TEAM_WINNER_RESULT == 'INSERT 0 1' ]]
    then
      echo 'inserted team:' $winner
    fi
  fi
fi
if [[ $opponent != opponent ]]
then
  TEAM_ID_OPPONENT=$($PSQL "SELECT team_id FROM teams WHERE name='$opponent'")
  if [[ -z $TEAM_ID_OPPONENT ]]
  then
    INSERT_TEAM_OPPONENT_RESULT=$($PSQL "INSERT INTO teams(name) VALUES ('$opponent')")
    if [[ $INSERT_TEAM_OPPONENT_RESULT == 'INSERT 0 1' ]]
    then
      echo 'inserted team:' $opponent
    fi
  fi
fi
if [[ $year != year ]]
then
  GAMES_WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$winner'")
  GAMES_OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$opponent'")
  INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(year, round, winner_goals, opponent_goals, winner_id, opponent_id) VALUES ($year, '$round', $winner_goals, $opponent_goals, $GAMES_WINNER_ID, $GAMES_OPPONENT_ID);")
  if [[ $INSERT_GAME_RESULT == 'INSERT 0 1' ]]
    then
      echo 'inserted game:' $year $round $winner_goals $opponent_goals $GAMES_WINNER_ID $GAMES_OPPONENT_ID
    fi
fi
done