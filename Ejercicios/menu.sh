#!/bin/bash


# Autor: Daniel Blanco Aranda
# Fecha 18/01/2024
# Descripcion Se crea una menú con distintas opciones 
# Script menu.sh

clear
while true; do


	echo "Ejecute una opción"
	echo "Listar archivos"
	echo "1- Listar Archivos"
	echo "2- Mostrar Fecha y hora"
	echo "3- Salir"

	read -p  "Elije una opción " opcion

	case  $opcion in

	1)

			echo "Se van a listar archivos"
			ls
			echo "--------------"


			;;

	2)

			echo "Se va a mostrar la fecha y la hora"
			date
			echo "--------------"


			;;

	3)
			echo " ¡Hasta Luego ! "
			exit
		;;


	*)
			echo "Opción no valida"
			echo "--------------"

			;;

	esac



done


