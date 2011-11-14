#!/bin/bash

# Neueste Datei in einem Verzeichnis
# ermitteln.

# SPACE
echo "================ SPACE"
PFAD=/root/scripts/misc/log/*_space.gz
FILE=`ls -tr $PFAD | tail -n 1`
echo $FILE
/root/scripts/misc/du_size.pl -i $FILE

# SPACE2
echo .
echo .
echo .
echo "================ SPACE2"
PFAD=/root/scripts/misc/log/*_space2.gz
FILE=`ls -tr $PFAD | tail -n 1`
echo $FILE
/root/scripts/misc/du_size.pl -i $FILE
