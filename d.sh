#!/bin/bash

#Comprobamos que se han pasado correctamente los parámetros
if [ $# -eq 0 ]
then
        echo "Error: no se ha indicado ninguna nota"
        exit 1
fi

#Calculamos la calificación
if [ $1 -lt 5 ]; then
	echo "Suspendido"
elif [ $1 -ge 5 ] && [ $1 -lt 7 ]; then
	echo "Aprobado"
else
	echo "Sobresaliente"
fi
