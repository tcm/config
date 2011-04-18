#!/bin/bash


if [ ! $1 ]; then
  echo "Usage: $0 <Hostname>"
  exit 1;
fi


HOSTNAME=$1
BACKUP_ROOT=/backup/vmware


echo "Deleting Backup-Dir...."
echo "rm -r /$BACKUP_ROOT/$HOSTNAME/"
rm -r /$BACKUP_ROOT/$HOSTNAME/

echo "Backup the  host...."
/usr/sbin/vcbMounter -h localhost -a name:$HOSTNAME -r /$BACKUP_ROOT/$HOSTNAME  

#echo "Zipping Host-Files...."
#date
#lzop -U /$BACKUP_ROOT/$HOSTNAME/* 
#date

