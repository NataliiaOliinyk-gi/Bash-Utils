#!/bin/bash
#
	if [[ $# -ne 1 ]]; then
		echo "Usage: $0  <backupt_folder>"
	  	exit 1
	fi

backup_folder=$1

CURRENT_DATE=$(date +"%d.%m.%y")

mkdir -p backup_$CURRENT_DATE

tar -czf backup_$CURRENT_DATE/archive_backup_folder_$CURRENT_DATE.tar $backup_folder

