#!/bin/bash

#Erstellen Sie ein Skript, das einen Parameter entgegennimmt und checkt ob es eine Datei gibt, die so heißt wie der übergebene Parameter.
#Aufruf: ./test.sh test.txt
#Erweiterung: Die Eingabeaufforderung soll solange gezeigt werden, bis der Benutzer ein q eingibt, oder einen vorhandenen Dateinamen.

if [[ $1 ]]
then
	abfrage=$1
else
	#read -p "Ihre Eingabe: " abfrage
	abfrage=''
	until [[ $abfrage = 'q' ]] || [[ -e $abfrage ]]
	do
		read -p "Ihre Eingabe: " abfrage
		echo "Die Abfrage lautet: $abfrage"
	done
fi       

if [[ -e $abfrage ]]
then
        echo "Der Eintrag: ' " $abfrage "' wurde gefunden"
else
        echo "Leider wurde der Eintrag:' " $abfrage "' nicht  gefunden. "
fi


