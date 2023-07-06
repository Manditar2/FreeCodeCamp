#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

cat games.csv | while IFS=',' read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR != year ]]
    then
      echo $($PSQL " INSERT INTO teams(name) values('$WINNER') ")
      echo $($PSQL " INSERT INTO teams(name) values('$OPPONENT') ")
      WINNER_ID=$($PSQL " SELECT team_id FROM teams WHERE name = '$WINNER' ")
      LOSER_ID=$($PSQL " SELECT team_id FROM teams WHERE name = '$OPPONENT' ")
      echo $($PSQL " INSERT INTO games(year,round,winner_id,opponent_id,winner_goals,opponent_goals) values('$YEAR','$ROUND','$WINNER_ID','$LOSER_ID','$WINNER_GOALS','$OPPONENT_GOALS') ")
      
  fi
done
