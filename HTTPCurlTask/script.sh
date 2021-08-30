#!/bin/bash

file="URL.txt"
urls=$(cat $file)

echo "Here are the URLs you requested ="

for url in $urls
do
    echo $url
    statusCode=$(curl -s -o /dev/null -w "%{http_code}" $url)
    echo $statusCode >> statusCode.txt
    if [[ $statusCode == "200" ]] || [[ $statusCode == "301" ]]
    then   
        echo "The URL $url is Healthy!"
    elif [[ $statusCode == "000" ]]
    then    
        echo "No Response from server, Please check the following Domain \"$url\""
    else
        echo "Your URL $url is UnHealthy! it returned $statusCode response!!"
    fi
done

