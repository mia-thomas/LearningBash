# Affirmations Task - Objective:

echo "Hello, how many Affirmations would you like to receive today?"
read affirmationRequest
i=0
declare -a affirmations=()

while [ $i -lt $affirmationRequest ]
do 
     websiteOutput=$(curl -s "https://www.affirmations.dev/")
     affirmations+=($(echo "${websiteOutput}" | jq '.affirmation'))
    i=$[$i+1]
done

printf "%s\n" "${affirmations[@]}" > Affirmations.txt 

# Use gitignore, to avoid uploading affirmations.txt to git repo

touch .gitignore







