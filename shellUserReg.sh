#!/Users/deepakpatel/Dev/bin/bash5 -x

# variables
firstName=""





# functions

# vaidates first name starts with caps alphabet and can have any number of alphabet after that
validateFirstName(){
    read -p "Enter first name: " firstName
    firstNamePattern="^[A-Z][a-z A-Z]{2}"
    if [[ $firstName =~ $firstNamePattern ]];
    then
        echo "First name is valid"
    else
        echo "First name is invalid"
        validateFirstName
    fi
}


validateFirstName
