# use ls and egrep to count the number of files in the current directory
numfiles=$(ls -A | wc -l)
iscorrect=0

# function that checks a player's guess against the correct answer
function checkguess {
  if [[ $1 -eq $numfiles ]]
  then
    iscorrect=1
    echo "You guessed correctly!"
  elif [[ $1 -lt $numfiles ]]
  then
    echo "Too low"
  else
    echo "Too high"
  fi
}

# continue loop as long as player does not guess correctly
while [[ iscorrect -eq 0 ]]
do
  echo "Guess the number of files in this directory: "
  read guess
  checkguess $guess
done
