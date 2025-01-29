#!/bin/bash
#

set -e

TARGET=70 # %
DF_ROOT=$(df / | awk '{print $5}' | sed 's/%//' | grep -v Use)


if [ "$DF_ROOT" -gt "$TARGET" ]; then
	date
	echo "Места на диске не достаточно"
	echo "Доступно меньше $TARGET %"
	du -ah / 2>/dev/null | sort -rf | head -n 10
else
	echo "disk space free"
fi
