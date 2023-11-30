#!/bin/bash

# Script: existeusuario.sh
# Autor: Daniel Blanco Aranda
# Fecha: 30-11-23
# Descripcion: Compruwba si existe el usuario pasado por pantalla



# Para expresiones condicionales se usa dobles corchetes

clear

if [[ $# -ne 1 ]] ; then
 echo "El ńumero de argumentos es incorrecto"
 echo "Uso: $0 <nombre Oscript>"

exit 1

fi

if grep -q "^$1" /etc/passwd ; then
	echo "El usuario $1 existe en el sistema"
    else
	echo "El usuario $1 no existe en el sistema"
fi

exit 0


