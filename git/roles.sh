#!/bin/bash

URL="git@server.de/Linux"
LIST="ansible-role-1 \
      ansible-role-2"

for ROLE in $LIST
do

      case "$1" in 
      "-clone" )
          echo $ROLE
	  git clone $URL/$ROLE
       ;;
       "-fetch" )
         echo $ROLE
         cd $ROLE
         git fetch origin
         cd ..
       ;;
       "-pull" )
         echo $ROLE
         cd $ROLE
         git pull origin
         cd ..       
       ;;
       "" )
         echo "Parameter is missing."
         echo "Usage: $0 [-clone|-fetch|-pull]"
         exit 1
       ;;
      esac
done
