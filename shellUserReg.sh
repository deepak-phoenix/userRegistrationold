#!/Users/deepakpatel/Dev/bin/bash5 -x

# variables
firstName=""
lastName=""
mail=""
phone=""
password=""


# functions


validatePassword(){
    read -p "Enter a valid password: " password
    passwordPatternLen="^.{8}"
    passwordPatternCaps="[A-Z]+"
    passwordPatternNum="[0-9]+"
    if [[ $password =~ $passwordPatternLen ]] && [[ $password =~ $passwordPatternCaps ]] && [[ $password =~ $passwordPatternNum ]]
    then
        echo "Valid password"
    else
        echo "Invalid pass"
        echo "Try again"
        validatePassword
    fi
}

# validates phone number with country code
validatePhone(){
    read -p "Enter a valid phone number: " phone
    phonePattern="^\+?[0-9]{2}[ ][0-9]{10}$"
    if [[ $phone =~ $phonePattern ]]
    then
        echo "Valid phone number"
    else
        echo "Invalid phone number"
        echo "Try again"
        validatePhone
    fi
}

# validates mail if wrong input and fun asks again for user input
validateMail(){
    read -p "Enter mail id: " mail
    mailPattern="^[a-z A-Z][[:alnum:]]*\.?\-?\+?[a-z A-Z 0-9]+@[a-z A-Z 0-9]+\.[a-z A-Z]{2}[a-z A-Z]?\.?[a-z A-Z]*$"
    if [[ $mail =~ $mailPattern ]]
    then
        echo "Valid mail"
    else
        echo "Invalid mail"
        echo "Try again"
        validateMail
    fi
}



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
validateMail
validatePhone
validatePassword
