#!/bin/bash

# Array
# Daniel Blanco Aranda
# Primer Ejemplo 25/01/2024

clear

diasSemana=(Lunes Martes Miercoles Jueves Viernes Sabado Domingo)

echo ${diasSemana[6]}
echo ${diasSemana[*]}

declare -a numerosPares=(2 4 6 8 10)
echo ${numerosPares[*]}

declare -a sistemasOperativos=('windows 10' mac linux\ min)
echo ${sistemasOperativos[*]}

# Array definido asignando directamenye sus valorrs
vocales[0]=a
vocales[1]=e
vocales[2]=i
vocales[3]=o
vocales[4]=u
echo ${vocales[*]}

# Recorrido de un array

echo "Recorrido en @"
contador=0

for i in "${vocales[@]}"; do
	echo "Vocal $contador: $i"
	let contador=$contador+1
done

echo "total vocales $contador"
echo 



