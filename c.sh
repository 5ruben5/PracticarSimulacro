#!/bin/bash

#Script para calcular el número de suspensos y aprobados que hay en notas.txt

#Contador para los suspensos
contSusp=0
#Contador para los aprobados
contApr=0

#Bucle para recorrer el fichero
while read line
do
  nota=$(echo $line |  awk {'print $3'})
  #Comprobamos la nota y aumentamos el contador correspondiente
  if [ $nota -lt 5 ]; then
    contSusp=$((contSusp + 1))
  else
    contApr=$((contApr + 1))
  fi
done < notas.txt

#Mostramos los resultados
echo "Numero de suspensos: $contSusp"
echo "Numero de aprobados: $contApr"
