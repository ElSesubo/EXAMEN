#!/bin/bash

lineas=`cat datos.txt | wc -l`
read -p "Nom d'usuari : " nom
read -p "Nom del modul : " mod 

cont=0

while [ $cont -le $lineas ]
do
    cont=$((cont+1))
    modulo=`cat datos.txt | head -$cont | tail -1 | awk '{print  $2}'`
    nombre=`cat datos.txt | head -$cont | tail -1 | awk '{print  $1}'`
    nota=`cat datos.txt | head -$cont | tail -1 | awk '{print  $3}'`
    if [ "$modulo" = "$mod" ] && [ "$nombre" = "$nom" ]
    then
        nt=$nota
        echo "El usuario $nom, tiene una nota de un $nota en el modulo de $mod"
    fi
done

if [ "$nombre" != "$nom" ] || [ "$modulo" != "$mod" ]
then
    echo "No existe ese registro"
fi

sleep 10s