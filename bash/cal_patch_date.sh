#!/bin/bash

# Calculate Patching-Dates.
# Start the script for instance at 1st of month.
# 
# (jb) 10/2022

MONTH=$(date "+%-m")           # Actual month.
YEAR=$(date "+%Y")             # Actual year.

# Calculate next month. 
# Comment this section in, if you start the script on the 28. the month before.
#if [ $MONTH = 12 ] ; then
#  MONTH=1
#  YEAR=$[$YEAR+1]
#else
#  MONTH=$[$MONTH+1]             
#fi

declare -i count=1             
declare -i week2=0

# Loop to check  for the 2nd Tueday.
while [ $count -le 14 ]

   # WEEKDAY = 1,2,3,4,5,6,7 (1 = Monday).
   WEEKDAY=$(date -d $MONTH/$count/$YEAR "+%u") 

   if [ $WEEKDAY = 2 ] ; then # Tuesday?
      week2=$[week2+1]
   fi

   if [ $week2 = 2 ] ; then # 2nd week?
    
      case "$1" in 
      "-s" )
         # Staging
         echo "$[count+5].$MONTH.$YEAR" 
         exit 0
       ;;

       "-p" )
         # Productive
         echo "$[count+12].$MONTH.$YEAR" 
         exit 0
       ;;
       "" )
         echo "Parameter is missing."
         echo "Usage: $0 [-s|-p]"
         exit 1
       ;;
      esac
   fi
   count=$[count+1]
done
