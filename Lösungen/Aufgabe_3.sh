#!/bin/bash

#3.
#Speichern Sie das Datum in einer Vaiable date.
#Speichern Sie den ersten Parameter nach der Eingabeaufforderung in die Variable topic Erzeugen Sie einen Dateinamen, nach dem folgenden Muster: /home/theo/<parameter>notes.txt. Nutzen Sie die Variable topic und die systemimmanente Variable für das Home-Verzeichnis des aktuellen Users.
#Erzeugen Sie die Eingabeforderung: "Notiz:" und speichern Sie die Eingabe des Users in der Datei mit Datumsangabe.


zeitpunkt=$(date)

read -p "Name der Datei?:" topic

if [[ ! ls /home/fabian/KuA/Lösungen/$topic.notes.txt ]]
	then
		touch /home/fabian/KuA/Lösungen/$topic.notes.txt
		read -p "Ihre Notiz lautet?:" notes
		cat >/home/fabian/KuA/Lösungen/$topic.notes.txt notes strg + d
else
	echo "Fehler"
fi

echo $zeitpunkt




