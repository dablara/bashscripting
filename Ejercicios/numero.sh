#!/bin/bash

# Script numero.sh
# Descripción; Introduce un número y determina si es negativo,positivo o 0
# Autor : Daniel
# Fecha 11/01/2024



read -p "Introduce un  numero " numero

if [ $numero -eq 0 ] ;then
	echo "El número es 0"

elif [ $numero -gt 0 ]; then
	echo "El númerio es positivo"

else
	echo "El número es negativo"

fi



