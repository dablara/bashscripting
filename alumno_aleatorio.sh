#!/bin/bash

# Autor: Daniel Blanco

# Descripción: Utilizar una lista de alumnos  y funcion que recorre la lista y selecciona un alumno aleatorio

# Script: alumno_aletorio.sh

# Fecha: 08/02/2024

# Script para seleccionar un alumno al azar de una lista

alumnos=("Fran" "Luis" "Javi" "Andres" "Marcos" "Pablo" "Jaime" "Juan Ranchal" "Alfonso" "Daniel" "Guadalupe" "Ángel" "Cinthia" "Antonio" "Juan Martin" "Rafa Fernandez" "Jorge" "Rafa Carmona" "Manolo" "A>

# Generar un número aleatorio entre 0 y la longitud del array de alumnos
num_aleatorio=$((RANDOM % ${#alumnos[@]}))

# Seleccionar al alumno aleatorio
alumno_seleccionado=${alumnos[$num_aleatorio]}


# Mostrar el alumno seleccionado
echo "La victima de hoy es: $alumno_seleccionado"




