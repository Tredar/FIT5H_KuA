#!/bin/bash
if [[ -z $1 ]] #erster Parameter es wird geprüft ob ein Paramter übergeben wurde
	then
	echo "Sie haben keinen Ziel-Ordner angeben."	
else 
	topic=$1
	datum=$(date +"%d.%m.%Y %H:%M")		#ändert die Datumformatierung in die Deutsche"
	read -p "Notiz: " notiz
	dir="$HOME/$topic"					#Verzeichnis vom Ordner(topic/$1)
	file="$dir/notes.txt"				#Verzeichnis von der notes.txt
	mkdir -p $dir						#Erstelle den Ordner, falls noch nicht existiert
	printf "$datum: $notiz \n" >> $file #Erstelle die Datei und füge hinzu oder füge hinzu wnen schon existiert
fi