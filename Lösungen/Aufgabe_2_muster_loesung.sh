#!/bin/bash
zahl=0
counter=1
while [[ 1 ]]
do
	read -p "Ihre $counter . Eingabe: " val

	if [[ $val = "exit" ]]; then
		echo "Endergebnis: $zahl. Das Programm wurde beendet."
		break
	elif [[ $val -gt 0 ]]; then
		counter=$((counter + 1))
		zahl=$((zahl + val))
		echo $zahl
	else
		echo "Falsche Eingabe: $val kann nicht addiert werden. Geben Sie ausschließlich Zahlen ein."
	fi
done