#!/bin/bash

lineas=`cat datos.txt | wc -l`

cont=0
contSI=0
contPROG=0
contED=0

while [ $cont -le $lineas ]
do
    cont=$((cont+1))
    modulo=`cat datos.txt | head -$cont | tail -1 | awk '{print  $2}'`
    case "$modulo" in
        "SI")
            contSI=$((contSI+1))
        ;;
        "PROG")
            contPROG=$((contPROG+1))
        ;;
        "ED")
            contED=$((contED+1))
        ;;
    esac
done

echo "SI : $contSI"
echo "PROG : $contPROG"
echo "ED : $contED"

sleep 10s