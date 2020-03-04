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

#VALIDATE MOBILE NUMBER
function mobileNumber {
printf "Please enter the mobile number:\n"
read mobileNumber
isMobileNumberValid="^[0-9]{2}[ ]{1}[0-9]{10}$"
if [[ $mobileNumber =~ $isMobileNumberValid ]]
   then
      printf "valid\n"
   else
      printf "invalid\n"
fi
}

#PASSWORD VALIDATION
function password(){
local count=0
printf "Please enter the password:\n"
read password
#PASSWORD 8 CHARACTOR
isPasswordValid="^.{8,}$"
#PASSWORD MUST HAVE ATLEAST ONE UPPER CASE CHARACTOR
isPasswordValid1="[A-Z]{1,}"
#PASSWORD MUST HAVE ATLEAST ONE NUMBER
isPasswordValid2="[0-9]{1,}"
#PASSWORD MUST HAVE ATLEAST ONE SPECIAL CHARACTOR
isPasswordValid3="^[0-9a-zA-Z]*[!@#^%&*][A-Za-z0-9]*$"
   if [[ $password =~ $isPasswordValid ]]
      then
         (( count++ ))
   fi
   if [[ $password =~ $isPasswordValid1 ]]
         then
         (( count++ ))
   fi
   if [[ $password =~ $isPasswordValid2 ]]
         then
         (( count++ ))
   fi
   if [[ $password = $isPasswordValid3 ]]
         then
         (( count++ ))
   fi
   if [[ $count == 4 ]]
      then  
         printf "valid"
      else
         printf "invalid"
   fi
}

# firstName
# lastName
# emailAddress
# mobileNumber
password