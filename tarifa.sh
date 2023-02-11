#!/bin/bash

echo "Por favor, introduce el número de llamadas: "
read llamadas

if [ $llamadas -gt 100 ]; then
  tarifa="Tarifa 1"
  coste=100
elif [ $llamadas -ge 20 ]; then
  tarifa="Tarifa 2"
  coste=$(expr 50 + $(expr $llamadas \* 1))
else
  tarifa="Tarifa 3"
  coste=$(expr 20 + $(expr $llamadas \* 2))
fi

echo "La tarifa que te conviene es $tarifa y el coste total de atender a $llamadas llamadas es de $coste euros."
