#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############
title="Overlord"
####Task 1
$USER="Malavika"
hostname="myhostname"
#####Task 2
hostname=$(hostname)
######Task 3
day=$(date +%A)
hour=$(date +%I)
minute=$(date +%M)
meridian=$(date +%p)

#####Task 4

if [ $day == "Monday" ]
then
  title="Monday will be game day "
elif [ $day == "Tuesday" ]
then
  title="Tuesday is praying day"
elif [ $day == "Wednesday" ]
then
   title="Wednesday is dancing day"
elif [ $day == "Thursday" ]
then
  title="Thursday is singing day"
elif [ $day == "Friday" ]
then
  title="Friday is eating day"
elif [ $day == "Saturday" ]
then
  title="Saturday is sports day"
else
  title="Sunday is hoilday"

fi
###############
# Main        #
#############
output="Welcome to planet $hostname, $title $USER!,It is $hour:$minute $meridian on $day"

cowsay $output
