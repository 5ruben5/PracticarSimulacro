
#!/bin/bash

# contar las lineas del archivo notas.txt
matriculas=$(wc -l < notas.txt)

# restar 1
lineas_restadas=$(expr $matriculas - 1)

# imprimir mensaje
echo "El archivo notas.txt tiene $lineas_restadas matriculas."
