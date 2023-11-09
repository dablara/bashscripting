#!/bin/bash

# Script saluda.sh
# Autor: Daniel Blanco Aranda
# Descripcion : Saluda 
# Fecha: 09-11-10

clear
echo "El nombre del script es " $0
echo "Tu nombre es " $1
echo "Tu apellido es " $2
echo "Hola " $1 $2
echo "Has pasado $# argumentos"
echo "$*"
echo "$@"
