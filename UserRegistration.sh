#!/bin/bash

# #User Registration System needs to ensure all validations are in place during the User Entry
# printf '%s\n' "----------------User Registration---------------------------"

# #VALIDATE FIRST NAME
function firstName(){
printf "Please enter the first name:\n"
read firstName
isFirstNameValid="^[A-Z]{1}[a-z]{2,}$"
if [[ $firstName =~ $isFirstNameValid ]]
   then
      printf "valid\n"
   else
      printf "invalid\n"
fi
}
#VALIDATE LAST NAME
function lastName(){
printf "Please enter the last name:\n"
read lastName
isLastNameValid="^[A-Z]{1}[a-z]{2,}$"
if [[ $firstName =~ $isFirstNameValid ]]
   then
      printf "valid\n"
   else  
      printf "invalid\n"
fi
}

#VALIDATE EMAIL NAME
function emailAddress(){
printf "Please enter the email address:\n"
read emailAddress
isEmailValid="^[a-z]{1,}([.]?[-]?[+]?[a-z0-9]{1,})?[@]{1}[a-z0-9]{1,}[.]{1}[a-z]{2,4}([.]?[a-z]{2,4})?$"
if [[ $emailAddress =~ $isEmailValid ]]
   then
      printf "valid\n"

   else  
      printf "invalid\n"
fi
}

firstName
lastName
emailAddress
