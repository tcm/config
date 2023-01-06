#!/bin/bash

echo ""
echo "The following 'roles' were found; select one:"

# set the prompt used by select, replacing "#?"
PS3="Use number to select a role or 'stop' to cancel: "

# allow the user to choose a directory
select rolename in ansible-role*
do
   # leave the loop if the user says 'stop'
   if [[ "$REPLY" == stop ]]; then break; fi

   # complain if no role was selected, and loop to ask again
   if [[ "$rolename" == "" ]] then
      echo "'$REPLY' is not a valid number"
      continue
   fi

   # now we can use the selected role
   echo ""
   echo "ansible-playbook -i $1, execute-role.yml --extra-vars \"rolename=$rolename\""
   echo ""

   # it'll ask for another unless we leave the loop
   break
done
