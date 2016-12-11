#!/bin/bash

read -p "Ihre Eingabe: " var_name

echo "Die Eingabe lautet: " $var_name

if [[ $var_name = "q" ]]
then 
	echo "Ist ein prima q"
elif [[ $var_name = "m" ]]
then
	echo "jo, ein m"
else
	echo "irgendwas anderes"
fi
