#!/bin/bash

# Script: carpetafecha_variable.sh
# Autor: Daniel Blanco Aranda
# Fecha: 09-11-23
# Descripcion : Crear un Script que haga lo siguiente
# Almacene una variable la cadena alumnos
# Almanece una variable la fecha en formato dia,mes,año
# Crea una carpeta con la cadena y la fecha

# Declaración de variables
clear
cadena='alumnos'
fecha=$(date +%d-%m-%Y)

# Creacion de la carpeta
mkdir ${cadena}_$fecha

# Decimos que se ha creado
echo "Se ha creado la carpeta"
# Listamos el directorio
ls -l
