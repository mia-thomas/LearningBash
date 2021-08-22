# Affirmations Task - Objective:
echo "Hello, how many Affirmations would you like to receive today?"
read affirmationRequest
i=0

while [ $i -lt $affirmationRequest ]
do
    websiteOutput=$(curl "https://www.affirmations.dev/")
    websiteOutput=$(echo "${websiteOutput}" | jq '.affirmation' >> Affirmations.txt)
    i=$[$i+1]
done

numberOfAffirmations=$(wc -l Affirmations.txt)
echo "Thanks for using our service, to generate your Affirmations, we've put $numberOfAffirmations in the file Affirmations.txt"
