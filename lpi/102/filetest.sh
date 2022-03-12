#!/bin/bash

if test -d ./testdir ; then
   echo "IsDirectory"
fi

if test -f ./testfile ; then
   echo "IsFile"
fi

if test -x ./testfile ; then
   echo "IsExecuteable"
fi

if test ./testfile2 -nt ./testfile ; then
   echo "IsNewerThan"
fi

# eq
# ne

# gt
# ge

# lt
# le

if test 10 -ge 10 ; then
   echo "IsGreaterOrEqual"

fi	
