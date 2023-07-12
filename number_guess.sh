#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo "Enter your username:"
read USERNAME

NUMBER_TO_GUESS=$(( 1 + RANDOM % 1000 ))

#Verificamos si existe.
USER=$($PSQL "SELECT * FROM players WHERE name='$USERNAME'" )
echo $USER
if [[ -z $USER ]]
  then
    #Se debe agregar
    echo "Welcome, $USERNAME! It looks like this is your first time here."
    INSERTAR=$($PSQL " INSERT INTO players(name) VALUES('$USERNAME') ")
  else
    USER_HISTORY=$($PSQL " SELECT COUNT(*), name, MIN(tries) FROM players INNER JOIN games USING(player_id) WHERE name = '$USERNAME' GROUP BY player_id ")
    IFS="|" read -r GAMES_PLAYED USUARIO BEST_GAME <<< "$USER_HISTORY"

    echo "Welcome back, $USUARIO! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

echo "Guess the secret number between 1 and 1000:"
GUESS=1001
INTENTOS=0
#Loop
while [[ $GUESS != $NUMBER_TO_GUESS ]]
  do
    read GUESS
    ((INTENTOS++))
    if [[ $GUESS =~ ^[0-9]+$ ]]
      then
        if [[ $GUESS -gt $NUMBER_TO_GUESS ]]
          then
            echo -e "\nIt's lower than that, guess again:"
        elif [[ $GUESS -lt $NUMBER_TO_GUESS ]]
          then
            echo -e "\nIt's higher than that, guess again:"
        elif [[ $GUESS -eq $NUMBER_TO_GUESS ]]
          then
            GET_PLAYER_ID=$($PSQL " SELECT player_id FROM players WHERE name = '$USERNAME' ")
            INSERT_GAME=$($PSQL " INSERT INTO games(player_id,tries) VALUES($GET_PLAYER_ID,$INTENTOS) ")
            echo -e "\nYou guessed it in $INTENTOS tries. The secret number was $NUMBER_TO_GUESS. Nice job!"
        else
          echo -e "\nThat is not an integer, guess again:"
        fi
    else
      echo -e "That is not an integer, guess again:"
    fi  
done

