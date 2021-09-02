#!/bin/bash



read -p "Please enter your First number:" firstNum
echo "you have chosen $firstNum as your First Number."
read -p "Please enter your Second number:" secNum
echo "you have chosen $secNum as your Second Number."
echo "your two numbers are: $firstNum & $secNum "

# #Addition, take 2 numbers, add them together and return the result
add() {
     add=$(( $firstNum + $secNum))
     echo "When you add your two numbers, the Answer is: $add"
}
 add

# # # Subtraction, take 2 numbers, subtract them and return the result
subtract() {
    answer=$(($firstNum - $secNum))
    echo "When you Subtract your two numbers, the Answer is: $answer"
}
subtract 

# # Multiplication, take 2 numbers, multiply them and return the result
 multiply() { 
     multi=$(($firstNum * $secNum))
     echo "When you multiply your two numbers, the Answer is: $multi"
 }
multiply 

# # Division, take 2 numbers, divide them and return the result
divide() {
    div=$(($firstNum / $secNum))
    echo "When you divide your two numbers, the Answer is: $div"
}
divide



# # Create an array of 3 sets of 2 numbers, use these 2 numbers as arguments for each of the above functions.
# # Example:
# # array=1,2,3,4,5,6
# # for loop to go through each set of 2 numbers in the array (so loop 3 times) and on each iteration, call each of the functions. 
# # so add 1&2, subtract 1&2, etc etc. for each pair of numbers in the array
# for item in myAray
# do 

