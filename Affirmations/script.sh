#!/bin/bash
echo "Hello, how many Affirmations would you like to receive today?"
read affirmationRequest
i=0
IFS=""
declare -a affirmations=()
while [ $i -lt $affirmationRequest ]
do 
     websiteOutput=$(curl -s "https://www.affirmations.dev/")
     affirmations+=($(echo "${websiteOutput}" | jq '.affirmation'))
     i=$[$i+1]
done
printf "%s\n" "${affirmations[@]}" > Affirmations.txt 
numberOfAffirmations=$(cat Affirmations.txt | wc -l)
echo "Thanks for using our service, to generate your Affirmations, we've put $numberOfAffirmations in the file Affirmations.txt"









