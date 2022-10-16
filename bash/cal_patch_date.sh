#!/bin/bash

# Calculate Patching-Dates.
# Start the script for instance at 28th the month before.

MONTH=$(date "+%-m")           # Actual month.
YEAR=$(date "+%Y")             # Actual year.

# Calculate next month. 
# Comment this section out, if you start the script on the 1st of actual month.
if [ $MONTH = 12 ] ; then
  MONTH=1
  YEAR=$[$YEAR+1]
else
  MONTH=$[$MONTH+1]             
fi

declare -i count=1             

# Loop to check the beginning of a month for a Monday.
while [ $count -le 7 ]
do
   # Return 1 for Monday.
   WEEKDAY=$(date -d $MONTH/$count/$YEAR "+%u") 
   
   if [ $WEEKDAY = 1 ] ; then
    
      case "$1" in 
      "-s" )
         echo "$[count+6].$MONTH.$YEAR" 
         exit 0
       ;;

       "-p" )
         echo "$[count+13].$MONTH.$YEAR" 
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

