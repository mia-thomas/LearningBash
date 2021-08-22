# Affirmations Task - Objective:
# 1. Create a bash script that will ask the user how many Affirmations they would like to receive.
    #This website: [https://www.affirmations.dev/](https://www.affirmations.dev/) should return a different Affirmation every time it is visited. 
# 2. Use Curl to GET the content of the website, and store the content in a file. You should end up with a file that contains a list of Affirmations, the number of Affirmations should be determined by the number the user entered at step 1.
    #The response from the website will be like this {"affirmation":"I'm rooting for you"}
# 3.You should use jq to only get the second half of the response, you should only have the Affirmations in the file, not the whole response as above. example, convert: {"affirmation":"I'm rooting for you"} to "I'm rooting for you"
# 4. After all of the Affirmations have been put in the file, use the built it command "wc -l" to count how many lines are in the file. Print this number to the user like this: "Thanks for using our service to generate your Affirmations, we've put <NUMBER OF AFFIRMATIONS> in the file <FILENAME>"

#task1
echo "Hello, how many Affirmations would you like to receive today?"

read affirmationRequest

echo "you have requested $affirmationRequest affirmations to recieve today" 
