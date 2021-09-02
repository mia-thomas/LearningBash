#!/bin/bash

# read -p "Please enter your First number:" firstNum
# echo "you have chosen $firstNum as your First Number."
# read -p "Please enter your Second number:" secNum
# echo "you have chosen $secNum as your Second Number."
# echo "your two numbers are: $firstNum & $secNum "

# # # for loop to go through each set of 2 numbers in the array (so loop 3 times) and on each iteration, call each of the functions. 
# # # so add 1&2, subtract 1&2, etc etc. for each pair of numbers in the array
# # for item in myAray
# # do 
myArray=(9 10 11 18 7 4)

 plus() {
     arg1=$1
     arg2=$2
     answer=$(($arg1 + $arg2))
     echo "$arg1 + $arg2 = $answer"
 }

 for item in $myAray
 

plus ${myArray[1]} ${myArray[3]}



# # # # # Subtraction, take 2 numbers, subtract them and return the result
# subtract() {
#     answer=$(($firstNum - $secNum))
#     echo "When you Subtract your two numbers, the Answer is: $answer"
# }
# subtract 

# # # Multiplication, take 2 numbers, multiply them and return the result
#  multiply() { 
#      multi=$(($firstNum * $secNum))
#      echo "When you multiply your two numbers, the Answer is: $multi"
#  }
# multiply 

# # # Division, take 2 numbers, divide them and return the result
# divide() {
#     div=$(($firstNum / $secNum))
#     echo "When you divide your two numbers, the Answer is: $div"
# }
# divide






