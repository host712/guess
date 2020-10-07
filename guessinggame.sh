echo "The Guessing Game "
echo "which helps in finding the number of files in Current Directory! "
echo " "
function guess(){
  true_ans=$(ls -l |grep "^-"|wc -l)
  while true;
  do
    echo "Please enter your guess"
    read number
    if [ $number -lt $true_ans ]
    then
       echo "Your guess is less than the true number"
    elif [ $number -gt $true_ans ]
    then
       echo "Your guess is greater than the true number"
    else
       echo "Congratulation, you are right"
    break;
    fi
  done

}

guess
