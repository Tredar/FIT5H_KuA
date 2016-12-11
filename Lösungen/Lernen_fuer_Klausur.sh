#!/bin/bash


if [[ -e $1 ]]
	then
		echo "Die Datei $1 ist vorhanden"

else 
	read -p "Bitte geben Sie den Dateinamen ein oder q zum schließen: " dateiname
		if [[ $dateiname = "q" ]]
			then
				echo "Programm wurde geschlossen"
		elif [[ -e $dateiname ]]
			then
				echo "Die Datei $dateiname ist vorhanden"
		else
			while [[ ! -e $dateiname ]]; do
				read -p "Bitte geben Sie den Dateinamen ein oder q zum schließen:: " dateiname
					if [[ $dateiname = "q" ]]
						then
							echo "Programm wurde geschlossen"
					elif [[ -e $dateiname ]]
						then
							echo "Die Datei $dateiname ist vorhanden"
					fi
				done
		fi



fi