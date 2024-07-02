#Bash Script Roll D20 Portfolio

#!/bin/bash

#Variables
name='Josh Martin'
email='joshdmartin99@gmail.com'
linkedin='https://www.linkedin.com/in/josh-martin-516543b4/'
school1='Oakland University'
school2='Oakland Community College'
degree1='Associates Degree in Software Engineering'
degree2='Bachelors Degree in Biological Sciences'
softwareDev='software development'
jobTitle='recruiter'
programLang1='kotlin'
programLang2='c++'
bag='bag of holding'
knightGroup='Kynaz'
IdeGame='Unreal Engine'
IdeList='Visual Studio, Intellij and Android Studio'
Api='Rest Apis'
agile='Agile methodology'
rollCheckString='roll'
rollExit='no'

#start the profile roller
echo "My name is $name, Thank you for trying out my profile bash!"
echo "Roll a 1d20 to get a few facts about me (input 'roll' to get started or 'no' to exit): "

#declare array for random rolls
declare -a array=("I am a graduate of $school1 and $school2"
"I graduated in 2023 with an $degree1"
"I graduated in 2012 with a $degree2"
"For 6 years I was a $jobTitle with a small company in Clarkston MI that hired engineers"
"I have 3 years of experience writing code in Java and $programLang1"
"I wrote a small android program that emulates D&D’s $bag"
"I decided to go back to school during the pandemic and peruse an $degree2"
"I have programmed in $IdeGame for a small gaming project"
"I have 2 years of $programLang2 experience"
"My preferred IDE’s are $IdeList"
"I designed a website for a full contact armored fighters group called $knightGroup"
"I have about 6 months of experience working with $Api"
"I have created a relational database using SQLite and know how to query in SQL"
"I am learning more about $agile for the $softwareDev lifecycle"
"I have completed cards in Jira for $softwareDev"
"As a $jobTitle for engineers, I learned more about $softwareDev and it piqued my interest"
"I used to work for $school1 in the ecology lab where I assisted in research"
"My favorite programing language is $programmingLang1"
"I graduated Magna Cum Laude from $school2"
"I was on the deans list every year while at school at $school2")

#check to see if the user input is "roll" if so, set the randomroll and perform inital roll
read rollCheck
randomRoll=$((1 + $RANDOM % 20))

if [[ $rollCheck = $rollCheckString ]]; then
    for (( i=0; i<($randomRoll); i++ )); do
        echo "${array[(1 + $RANDOM % 20)]}"
    done
fi

#enter into the do while loop. Will continue to ask for more rolls until a "no" is input
while true; do
    echo "Roll again? Input "roll" or "no" to quit: "
    read inputWhile
    if [[ $inputWhile = $rollCheckString ]]; then
        for (( i=0; i<($randomRoll); i++ )); do
            echo "${array[(1 + $RANDOM % 20)]}"
        done
#when no is input, break the loop and display contact info
    elif [[ $inputWhile = $rollExit ]]; then
        echo "Thank you for checking out my profile roller!"
        echo "$name"
        echo "$linkedin"
        echo "Email: $email"
        break
    fi
done
