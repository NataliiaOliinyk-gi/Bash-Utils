#!/bin/bash
#

backup_dir="/home/ec2-user"
backup_location="/tmp/backup_nataliia_oliinyk"

mkdir -p "$backup_location"

backup_file="${backup_dir##*/}_backup_$(date +%Y-%m-%d).tar.gz"

tar -czf "$backup_location/$backup_file" "$backup_dir"

find "$backup_location" -maxdepth 1 -type f -name "*.tar.gz" -mtime +21 -delete


if [ $? -eq 0 ]; then
	echo "Резервна копія успішно створена: $backup_location/$backup_file"
else
	echo "Помилка при створенні резервної копії!" >&2
	exit 1
fi
