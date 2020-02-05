#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same
# it also demonstrates using conditional execution

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data (i.e. TestString)
# TASK 2: Improve it by rewriting it to use the if command
#         The if command should test if they got it right, in which case it should tell them they got it right
#         The if command should tell them they got it wrong
# TASK 3: Improve it by giving them 5 tries to get it right before failing
#           *** Do not use the exit command, and do not use a loop (e.g. while or for)
#Task 1
pass="enter your password :"
read -p "$pass" password
referenceString=hacker
if [ $password = $referenceString ]
####Task 2
then
echo "it is right password"
else
   echo "it is wrong password"
fi

#####Task 3
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "task 3"
pass="enter your password :"
read -p "$pass" password

     if [ $password != hacker ]
     then
       echo "enter password 2nd"
       read password
        if [ $password != hacker ]
        then
          echo "enter password 3rd"
          read password
          if [ $password != hacker ]
          then
            echo "enter password 4th"
            read password
            if [ $password != hacker ]
            then
              echo "enter password, this is the last chance"
              read password
              if [ $password != hacker ]
              then
                echo "Full attempt finished"
              else
                echo "correct"
              fi
            else
              echo "correct"
            fi
          else
            echo "correct"
          fi
        else
          echo "correct"
        fi
      else
        echo "correct"
      fi
