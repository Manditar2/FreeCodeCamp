#! /bin/bash
PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"

if [[ -z $1 ]]
  then
    echo "Please provide an element as an argument."
  else
    if [[ $1 =~ ^[0-9]+$ ]]
      then
        ATOMIC_NUMBER=$($PSQL "SELECT * FROM elements INNER JOIN properties USING(atomic_number) INNER JOIN types USING(type_id) WHERE atomic_number = $1" )
    fi

    if [[ -z $ATOMIC_NUMBER ]]
      then
        SYMBOL=$($PSQL "SELECT * FROM elements INNER JOIN properties USING(atomic_number) INNER JOIN types USING(type_id) WHERE symbol = '$1' OR name = '$1'" )
        if [[ -z $SYMBOL ]]
          then
            echo "I could not find that element in the database."
          else
            IFS="|" read -r TIPE NUMERO SIMBOLO NOMBRE MASA MELTING BOILING TIPO <<< "$SYMBOL"
            echo "The element with atomic number $NUMERO is $NOMBRE ($SIMBOLO). It's a $TIPO, with a mass of $MASA amu. $NOMBRE has a melting point of $MELTING celsius and a boiling point of $BOILING celsius."
        fi
      else
        IFS="|" read -r TIPE NUMERO SIMBOLO NOMBRE MASA MELTING BOILING TIPO <<< "$ATOMIC_NUMBER"
        echo "The element with atomic number $NUMERO is $NOMBRE ($SIMBOLO). It's a $TIPO, with a mass of $MASA amu. $NOMBRE has a melting point of $MELTING celsius and a boiling point of $BOILING celsius."
    fi
fi
