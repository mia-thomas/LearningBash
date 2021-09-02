#!/bin/bash

#Objective - Convert the URL checker bash script to use functions. In particular, there should be a function that takes a url as an input, checks the url and then returns the status code. Once the function has been created, modify your existing for loop to call the function

check_HTTP(){
    urltocheck=$1
    statusCode=$(curl -s -o /dev/null -w "%{http_code}" $urltocheck)
    if [[ $statusCode == "200" ]] || [[ $statusCode == "301" ]]
    then   
        echo "The URL $url is Healthy!"
    elif [[ $statusCode == "000" ]]
    then    
        echo "No Response from server, Please check the following Domain \"$url\""
    else
        echo "Your URL $url is UnHealthy! it returned $statusCode response!!"
    fi
}

file="URL.txt"
urls=$(cat $file)
echo "Here are the URLs you requested ="
for url in $urls
do
    echo "checking $url"
    check_HTTP $url
done



