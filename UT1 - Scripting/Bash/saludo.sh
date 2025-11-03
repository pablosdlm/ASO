#!/bin/bash
#=========================================
# Nombre: Saludo en Bash
# Descripción: Mostrar un saludo por pantalla
# Autor: Pablo Sainz de la Maza Rodriguez
# Fecha: 3/11/2025
# Versión: 1.0
# Uso: ./script.sh
# Comentarios:
#=========================================
nombre=$1
if [ $# -eq 0 ]
then 
    echo "No hay parámetros"
    exit 1 # Terminar script con error
fi
echo "Hola $nombre"
