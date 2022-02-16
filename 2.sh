#!/bin/bash

lineas=`cat datos.txt | wc -l`
read -p "Nom d'usuari : " nom 

cont=0
contlineas=0

while [ $cont -le $lineas ]
do
    cont=$((cont+1))
    modulo=`cat datos.txt | head -$cont | tail -1 | awk '{print  $2}'`
    nombre=`cat datos.txt | head -$cont | tail -1 | awk '{print  $1}'`
    if [ "$nombre" = "$nom" ]
    then
        contlineas=$((contlineas+1))
    fi
done

echo "El usuario $nom, esta matriculado en $contlineas modulos"

sleep 10s