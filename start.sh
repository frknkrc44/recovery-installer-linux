#!/usr/bin/env bash

clear
printf "\n======================================"
printf "\n TWRP Installer 0.3 by @uncannyjish"
printf "\n======================================\n\n"

choices=("Install Recovery"
	 "Fix System Destroyed"
	 "Exit")
	 
devices=("Mido"
	 "Ginkgo"
	 "Santoni"
	 "Willow"
	 "Raphael"
	 "Return to Main Menu")
	 
fix=("Ginkgo"
     "Return to Main Menu")
     
PS3="Enter your choice => "
	 
while [ "$M" != 0 ]; do
	printf "\nWhat do you want to do?\n\n"
	select C in "${choices[@]}"; do
		case "$C" in 
			"Install Recovery" ) printf "\n\n" 
				select D in "${devices[@]}" ; do
				case "$D" in 
					Mido|Ginkgo|Santoni|Willow|Raphael) $SHELL `dirname $0`/Bash/installer.sh "${D,,}"
					clear
					break 2
					;;
					"Return to Main Menu" ) break 2
					;;
					* ) printf "\n\nCan't you read?\n\n"
					break
					;;
				esac
				done
				;;
			"Fix System Destroyed" ) printf "\n\n"
				select D in "${fix[@]}" ; do
				case "$D" in 
					Ginkgo) $SHELL `dirname $0`/Bash/fix.sh ginkgo
					clear break 2
					;;
					"Return to Main Menu" ) break 2
					;;
					*) printf "\n\nCan't you read?\n\n"
					break
					;;
				esac
				done
				;;
			"Exit" ) printf "\n\nExiting....\n\n" 
				M=1
				break 2
				;;
			* ) printf "\n\nCan't you read?\n\n"
				break
				;;
		esac
	done
done

exit 0
