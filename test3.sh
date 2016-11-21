if [[ -e $1 ]]
then
        echo "Die Datei: ' " $1 "' wurde gefunden"
else
	read -p "Ihre Eingabe: " var_name

if [[ -e $var_name ]]
then
	echo "Die Datei: ' " $var_name "' wurde gefunden"
else
	echo "Leider wurde die Datei:' " $var_name "' nicht  gefunden. "
fi
fi 
