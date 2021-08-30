## Objectives:

Create a bash script that can read a list of URL's from a file. It then loops through each of those URL's and should use curl to get the HTTP status code of each URL. 
You should then write some logic that checks if the status code is a healthy one.
If the status code is healthy, then print to the screen "The URL <URL> is Healthy!", or if it is unhealthy, then print to the screen "The URL <URL> is Unhealthy, it returned a <HTTP Code> Response!"


## Task Notes

1) Firstly I set up a file named URL.txt and added 3 random Social Media URLs to the file, 2 Correct domains and 1 that will return as Error. the Urls I used are as followed:
	- https://www.google.com/
	- https://www.facebook.com/
	 - www.facebook.c
	 
2) I then set up a For Loop to read and display content (URLs) from the file URL.txt. 
3) I then edited the For loop to Curl the URLs within the file URL.txt.
4) I then set up a Variable named "statusCode" to return the HTTP Code, this made it possible to create the Conditional Statement.
5) I set up the Conditional Statement and realised the URL which is purposely incorrect was returning a "000" HTTP Code, I had never seen this code before so I did a quick google search and found "000" gets returned when no HTTP code was received due to a network error - to fix this issue I added an Else If (ELIF) option to my statement which asks the User to check their domain. 