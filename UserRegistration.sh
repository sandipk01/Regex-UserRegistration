#!/bin/bash

#User Registration System needs to ensure all validations are in place during the User Entry
printf '%s\n' "----------------User Registration---------------------------"
printf "Please enter the first name:"
read firstName
isFirstNameValid="^[A-Z]{1}[a-z]{2,}$"
if [[ $firstName =~ $isFirstNameValid ]]
   then
      printf "first name is valid\n"
   else
      printf "first name is invalid\n"
fi

