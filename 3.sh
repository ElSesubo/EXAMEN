#!/bin/bash

lineas=`cat datos.txt | wc -l`
read -p "Nom del modul : " mod 

cont=0
contlineas=0
notamax=0

while [ $cont -le $lineas ]
do
    cont=$((cont+1))
    modulo=`cat datos.txt | head -$cont | tail -1 | awk '{print  $2}'`
    nombre=`cat datos.txt | head -$cont | tail -1 | awk '{print  $1}'`
    nota=`cat datos.txt | head -$cont | tail -1 | awk '{print  $3}'`
    if [ "$modulo" = "$mod" ]
    then
        if [ $nota -gt $notamax ]
        then
            notamax=$nota
            nom=$nombre
        fi
    fi
done

echo "El usuario $nom, tiene la mayor nota, un $notamax"

sleep 10s