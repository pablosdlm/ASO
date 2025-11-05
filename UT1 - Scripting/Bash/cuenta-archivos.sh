#!/bin/bash
#=========================================
# Nombre: Contar archivos en bash
# Descripción: Contar archivos en el directorio
# Autor: Pablo Sainz de la Maza Rodriguez
# Fecha: 5/11/2025
# Versión: 1.0
# Uso: ./cuenta-archivos.sh
# Comentarios:
#=========================================

directorio=$1
cantidad=$(ls $directorio 2>/dev/null | wc -l)
if [ $# -eq 1 ]; then
    if [ -d "$directorio" ]; then
        if [ $cantidad -gt 0 ]; then
            echo "Hay $cantidad archivos en el directorio $directorio"
            exit 1
        else
            echo "El directorio $directorio está vacío"
            exit 0
        fi
    else
        echo "El directorio $directorio no existe"
    fi
else
    echo "No se ha especificado ningún directorio"
fi