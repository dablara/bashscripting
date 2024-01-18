#!/bin/bash

# Verifica si se proporciona el nombre del servicio como argumento
if [ -z "$1" ]; then
    echo "Uso: $0 <nombre_servicio>"
    exit 1
fi

servicio="$1"

# Verifica si el servicio está en ejecución
if pgrep -x "$servicio" > /dev/null; then
    echo "El servicio $servicio ya está en ejecución."
else
    # Intenta iniciar el servicio
    if systemctl start "$servicio"; then
        echo "El servicio $servicio se ha iniciado correctamente."
    else
        echo "Error al intentar iniciar el servicio $servicio."
        exit 1
    fi
fi
