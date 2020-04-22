#!/Users/deepakpatel/Dev/bin/bash5 -x

# variables
firstName=""
lastName=""




# functions

# vaidates name starts with caps alphabet and can have any number of alphabet after that
validateName(){
    Name=$1
    NamePattern="^[A-Z][a-z A-Z]{2}"
    if [[ $Name =~ $NamePattern ]];
    then
        echo "name is valid"
    else
        echo "name is invalid"
    fi
}

read -p "Enter first name: " firstName
validateName $firstName
read -p "Enter last name: " lastName
validateName $lastName
