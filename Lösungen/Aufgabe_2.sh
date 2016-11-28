#!/bin/bash

#2.
#Programmieren Sie einen Taschenrechner. In einer Eingabeforderung wird der Benutzer aufgefordert eine Zahl einzugeben. Diese Zahl wird zur vorher eingegebenen Zahl hinzuaddiert. Das Ergebnis wird ausgegeben und der Benutzer wird erneut zur Eingabe einer Zahl aufgefordert. Das Endergebnis wird ausgegeben, wenn der User die Zeichenfolge 'exit' eingibt. Die erste Eingabeaufforderung lautet: 'Geben Sie die 1. Zhal ein:'. Die fünfte Eingabeaufforderung lautet:'Bisher wurden 4 Zahlen eingegeben. Das Zwischenergebnis lautet: 22. Geben Sie eine weitere Zahl ein, oder beenden Sie mit exit.' Nach der Eingabe von exit lautet die Konsolenausgabe: 'Endergebnis: 33. Das Programm wurde beendet.' Wird etwas anderes als eine Zahl eingegeben gibt das Programm aus: 'Falsche Eingabe: xxx kann nicht addiert werden. Geben Sie ausschließlich Zahlen ein.'

echo "Taschenrechner"
echo ""
#if [[ $1 ]]
#then
#	zahl1=$1
#else
#	read -p "Bitte geben Sie die erste Zahl ein: " zahl1
#	echo $zahl1
#	
#	i=1
#	while [[ $zahl2 != "q"]]
#	do
#		read -p "Geben Sie bitte eine weitere Zahl ein oder beenden sie mit q" zahl2
#		ergebnis=$zahl1 + $zahl2
#		echo $ergebnis
#		i=i+1
#	done
#	
#fi



 
clear
 
antw="ja"
 
while test $antw == "ja" -o $antw == "j" -o $antw == "Ja" -o $antw == "J" -o $antw == "y" -o $antw == "yes" -o $antw == "Yes" -o $antw == "Y"
do
 
echo "Wähle die erste Zahl: "
read z1
 
if [[ $z1 =~ [0-9] && [^a-zA-Z] ]]
then
 
  echo "Nenne die zweite Zahl: "
  read z2
  if [[ $z2 =~ [0-9] ]]
    then
 
 
        echo -n "Wählen sie aus: 1 - Addition, 2 - Subtraktion, 3 - Multiplikation, 4 - Division: "
 
        read rz
        echo ""
 
        case $rz in
                1 ) erg=`expr $z1 + $z2`
                echo "Das Ergebnis ist: $erg."
                ;;
 
                2 ) erg=`expr $z1 - $z2`
                echo "Das Ergebnis ist: $erg."
                ;;
 
                3 ) erg=`expr $z1 \* $z2`
                echo "Das Ergebnis ist: $erg."
                ;;
 
                4 ) erg=`expr $z1 / $z2`
                    echo "Das Ergebnis ist: $erg."
                ;;
 
                * ) echo "Nicht möglich, nur die 4 Grundrechenarten"
                ;;
 
        esac
 
  else
    echo ""
    echo "Keine Zahl eingegeben!"
    echo ""
  fi
            else
  echo ""
  echo "Keine Zahl eingeben!"
  echo ""
fi
 
echo ""
echo -n "Noch einmal? (ja für noch eine Runde) "
read antw
        if test -z $antw;
        then
                echo "Viel Spaß noch"
exit 1
        else
 
                echo ""
 
        fi
 
done
 
echo ""
echo "Viel Spaß noch!"
echo ""
 
exit 2