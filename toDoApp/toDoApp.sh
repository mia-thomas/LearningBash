#!/bin/bash

echo "Welcome to my To-Do App, would you like to create a New To Do List. If you would like a New list please type \"New\"."
fileName="TaskList.txt"
read NewList
if [[ $NewList == "New" ]] || [[ $NewList == "new" ]]
then
    mv -f $fileName Archive/archiveList.txt
    echo "Great, Are you sure you want to proceed?"
else
    echo "Great, Are you sure you want to continue with Old List?"
fi

read Task
if [[ $Task == "Yes" ]] || [[ $Task == "yes" ]]
then   
    read -p "Please type your Task: " toDo
    echo $toDo >> $fileName
    echo "Would you like to add another Task?"
    read Answer
    while [[ $Answer == "Yes" || $Answer == "yes"  ]]
    do
        read -p "Please type your Task: " toDo
        echo $toDo >> $fileName
        echo "Would you like to add another Task?"
        read Answer
        if [[ $Answer != "Yes" ]] || [[ $Answer != "yes" ]]
        then
            echo "No Problem, you will find your Tasks in the file named ${fileName}."
        fi
    done
else
    echo "No Problem, you will find your Tasks in the file named ${fileName}."
fi

echo "Would you like me to read out your Tasks?"
read taskRead


if [[ $taskRead == "Yes" ]] || [[ $taskRead == "yes" ]]
then
    cat $fileName
    echo "Thank you for using my To Do List App, Goodbye"
else
    echo "No Problem, Goodbye"
fi

