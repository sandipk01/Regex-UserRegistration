#!/bin/bash

#User Registration System needs to ensure all validations are in place during the User Entry
printf '%s\n' "----------------User Registration---------------------------"

#VALIDATE FIRST NAME
printf "Please enter the first name:\n"
read firstName
isFirstNameValid="^[A-Z]{1}[a-z]{2,}$"
if [[ $firstName =~ $isFirstNameValid ]]
   then
      printf "valid\n"
   else
      printf "invalid\n"
fi

#VALIDATE LAST NAME
printf "Please enter the last name:\n"
read lastName
isLastNameValid="^[A-Z]{1}[a-z]{2,}$"
if [[ $firstName =~ $isFirstNameValid ]]
   then
      printf "valid\n"
   else  
      printf "invalid\n"
fi




