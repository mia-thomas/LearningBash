#!/bin/bash
# Firstly i set up a file named URL.txt and added 6 random Social Media URLs to the file. 
# I then set up a While Loop to read and display content (URLs) from the file URL.txt
# I then edited While loop to Curl the URLs. 
# then i reflected and realised a for loop would have been best so i began again. 

##WORKING FOR LOOP##
file="URL.txt"
urls=$(cat $file)

echo "Here are the URLs you requested ="
output=()

for url in $urls
do
    echo "$url"
    statusCode=$(curl -s -o /dev/null -w "%{http_code}" $url)
done 

if 
then
else
fi

# HTTP=( 200, 301 )
# # if [$(url) | grep $HTTP]
# # then
# #     echo "helloworld"
# # fi 
# if 
#   grep $HTTP urlCheck.txt 
# then
#     echo "helloworld"
# fi  

#You should then write some logic that checks if the status code is a healthy one, these codes start with 2xx or 3xx. If the status code begins with 2 or 3, then print to the screen "The URL <URL> is Healthy!", or if it starts with a different number, then print to the screen "The URL <URL> is Unhealthy, it returned a <HTTP Code> Response!"


