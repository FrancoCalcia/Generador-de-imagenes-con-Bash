#!/bin/bash

# Obtener la lista de archivos con extensión .jpg
archivos=$(ls *.jpg)

# Iterar sobre cada archivo
for archivo in $archivos; do
    # Extraer el nombre del archivo sin la extensión
    nombre=$(basename "$archivo" .jpg)
    
    # Verificar si el primer caracter es una letra mayúscula
    if [[ $nombre =~ ^[[:upper:]][[:lower:]]*$ ]]; then
        echo "El archivo $archivo comienza con una letra mayúscula."
    else
        echo "El archivo $archivo no comienza con una letra mayúscula."
    fi
done

