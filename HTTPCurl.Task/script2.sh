#!/bin/bash

# Create a bash script that can read a list of URL's from a file. It then loops through each of those URL's and should use curl to get the HTTP status code of each URL. You should then write some logic that checks if the status code is a healthy one, these codes start with 2xx or 3xx. If the status code begins with 2 or 3, then print to the screen "The URL <URL> is Healthy!", or if it starts with a different number, then print to the screen "The URL <URL> is Unhealthy, it returned a <HTTP Code> Response!"

# Firstly i set up a file named URL.txt and added 6 random Social Media URLs to the file. 
# I then set up a While Loop to read and display content (URLs) from the file URL.txt
# I then created a While loop to get Status Codes. 

echo "Here are the URLs you requested"

fileName="URL.txt"
n=1
while read line;
do
    echo "$n : $line";
    curl -I $(cat URL.txt)
    n=$((n+1))
done < URL.txt


