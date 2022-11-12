#!/bin/bash

URL="git@server.deLinux"
LIST="ansible-playbook-1 \
      ansible-playbook-2"

for PLAYBOOK in $LIST
do
        
      case "$1" in 
      "-clone" )
          echo $PLAYBOOK
	  git clone $URL/$PLAYBOOK
       ;;
       "-fetch" )
         echo $PLAYBOOK
         cd $PLAYBOOK
         git fetch origin
         cd ..
       ;;
       "-pull" )
         echo $PLAYBOOK
         cd $PLAYBOOK
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
