#!/bin/bash

#User Registration System needs to ensure all validations are in place during the User Entry
printf '%s\n' "----------------User Registration---------------------------"

function validate(){
   if [[ $1 =~ $2 ]]
      then
         echo "valid"
      else
         echo "invalid"
   fi
}

#VALIDATE FIRST NAME
printf "Please enter the first name:\n"
read firstName
isFirstNameValid="^[A-Z]{1}[a-z]{2,}$"
printf "your first name is $( validate $firstName $isFirstNameValid )\n"

#VALIDATE LAST NAME
printf "Please enter the Last name:\n"
read lastName
isLastNameValid="^[A-Z]{1}[a-z]{2,}$"
printf "yout last name is $( validate $lastName $isLastNameValid )\n"
