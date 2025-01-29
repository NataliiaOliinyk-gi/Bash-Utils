#!/bin/bash
#
CURRENT_DIR="/opt/281024-wdm/Nataliia_Oliinyk"
mkdir -p $CURRENT_DIR/HW_13

	for i in {1..10}
do
		CURRENT_DATE=$(date +"%d.%m.%y")
		touch $CURRENT_DIR/HW_13/$i'_'$CURRENT_DATE.txt
done
