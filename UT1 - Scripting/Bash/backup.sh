#!/bin/bash
#=========================================
# Nombre: Copia de seguridad
# Descripción: Copia de seguridad a otra carpeta
# Autor: Pablo Sainz de la Maza Rodriguez
# Fecha: 5/11/2025
# Versión: 1.0
# Uso: ./backup.sh
# Comentarios:
#=========================================

origen=$1
carpeta_destino=$2

if [  $# -eq 2 ]; then
    if [ ! -d "$carpeta_destino" ]; then
        mkdir -p $carpeta_destino
        if [ -d "$origen" ]; then
            cp -r "$origen"/* "$carpeta_destino"/
            echo "La copia se ha realizado de "$origen" a "$carpeta_destino" correctamente"
        else
            echo "El directorio "$origen" no existe"
        fi
    fi
else
    echo "No se ha especificado ningún directorio de origen "
fi

