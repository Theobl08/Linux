#!/bin/bash


    echo "Entrez 2 nombres a et b"
    read a
    read b

    echo "Quelle opération voulez-vous effectuer ?"
    echo "1-Addition : a+b"
    echo "2-Soustraction : a-b"
    echo "3-Multiplication : a*b"
    echo "4-Division entière : int(a/b)"

    read calcul

    case $calcul in
    1)
        echo $a"+"$b"="$(($a + $b));;
    2)
        echo $a"-"$b"="$(($a - $b));;
    3)
        echo $a"*"$b"="$(($a * $b));;
    4)
        if [ $b == 0 ]
        then
            echo "Désolé, je ne peux pas diviser par 0"
        else
            echo "La partie entière de "$a"/"$b"="$(($a / $b))
        fi;;
esac
echo "Pour faire une autre opération, relancer le script"
echo "Appuyer sur entrée pour quitter"
read quit