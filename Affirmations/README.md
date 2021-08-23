# Task Objective

1. Create a bash script that will ask the user how many Affirmations they would like to receive.

2. This website: [https://www.affirmations.dev/](https://www.affirmations.dev/) should return a different Affirmation every time it is visited. 

3. Use Curl to GET the content of the website, and store the content in a file. You should end up with a file that contains a list of Affirmations, 
the number of Affirmations should be determined by the number the user entered at step 1.

4. The response from the website will be like this {"affirmation":"I'm rooting for you"}

5. You should use jq to only get the second half of the response, you should only have the Affirmations in the file, not the whole response as above. 
example, convert: {"affirmation":"I'm rooting for you"} to "I'm rooting for you"

6. After all of the Affirmations have been put in the file, use the built it command "wc -l" to count how many lines are in the file. Print this number 
to the user like this: "Thanks for using our service to generate your Affirmations, we've put <NUMBER OF AFFIRMATIONS> in the file <FILENAME>"


## Notes after Task:
Above task complete 07:29 and is running really well, however there are a few issues i have picked up. 
Every time my while loop is run it overwrites the destination file, however due to it running (however many times the user wants, for example 3 times) the 
output in the file is only 1 Affirmation as it kept overriding until the final line. I then added ">>" to ensure it does not override. this causes more
issues as the Affirmations in the destination file are now permenant, therefore when the loop is run again the output will just add to the whats already in 
the destination file. Another issue, when my Affirmations get sent to the destination file, those Affirmations also get sent to Git. 


## Added Objectives to fix issue:
1. Silence curl output
2. Use Array to fix the file overwrite issue
3. Use gitignore, to avoid uploading affirmations.txt to git repo

## Notes after issues resolved 

I had some issues with Objective 2, originally i thought using an Array would fix my overwriting issue, however by using an Array and For loop for this task i ended up with the exact same issue with either overwriting or being permanent. I used google and realised the best way to get my desired outcome is to use the printf command. I changed my script and now everything is running smoothly. 