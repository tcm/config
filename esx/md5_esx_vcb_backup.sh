#!/bin/bash


if [ ! $1 ]; then
  echo "Usage: $0 <Hostname>"
  exit 1;
fi


HOSTNAME=$1
BACKUP_ROOT=/vmimages
REMOTE_DEST=/backup/vmware

echo "1. Deleting Local Backup-Directory...."
rm -vr /$BACKUP_ROOT/$HOSTNAME/

echo "2. Backup the  host...."
/usr/sbin/vcbMounter -h localhost -a name:$HOSTNAME -r /$BACKUP_ROOT/$HOSTNAME  

echo "3. Calculating MD5..."
cd /$BACKUP_ROOT/$HOSTNAME
md5sum * > files.md5

echo "4. Create Remote-Directory..."
mkdir -v /$REMOTE_DEST/$HOSTNAME

echo "5. Delete Files in Remote-Directory..."
rm -v /$REMOTE_DEST/$HOSTNAME/*

echo "6. Copy Files to Remote-Directory..."
cp -vr /$BACKUP_ROOT/$HOSTNAME $REMOTE_DEST

echo "7. Check MD5-Checksum's..."
cd /$REMOTE_DEST/$HOSTNAME
md5sum -c /$BACKUP_ROOT/$HOSTNAME/files.md5 > md5.results


cat md5.results | grep FAILED > /dev/null 
if [ "$?" = "0" ]; then
	cat md5.results | grep FAILED  
else
	echo "No MD5-Checksum Difference found!" 	
        echo "8. Delete Local Backup-Directory..."
        rm -vr /$BACKUP_ROOT/$HOSTNAME/
fi

