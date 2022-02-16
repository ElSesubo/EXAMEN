#!/bin/bash

lineas=`cat datos.txt | wc -l`
read -p "Nom d'usuari : " nom 

cont=0
total=0
contlineas=0

while [ $cont -le $lineas ]
do
    cont=$((cont+1))
    nota=`cat datos.txt | head -$cont | tail -1 | awk '{print  $3}'`
    nombre=`cat datos.txt | head -$cont | tail -1 | awk '{print  $1}'`
    if [ "$nombre" = "$nom" ]
    then
        total=$((total+nota))
        contlineas=$((contlineas+1))
    fi
done

media=$((total/contlineas))
echo "El usuario $nom, tiene de media una nota de $media"

sleep 10s