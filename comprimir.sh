#!/bin/bash

directorio="$PWD"

# Crear carpetas para las imágenes
mkdir -p "$directorio/ImagenesFemeninas"
mkdir -p "$directorio/ImagenesMasculinas"

# Mover las imágenes que cumplen con los criterios a la carpeta correspondiente
find "$directorio" -type f -name "*.jpg" | while read -r archivo; do
    nombre=$(basename "$archivo")
    if [[ $nombre =~ .*a\.jpg$ ]]; then
        mv "$archivo" "$directorio/ImagenesFemeninas/$nombre"
    else
        mv "$archivo" "$directorio/ImagenesMasculinas/$nombre"
    fi
done
#El comando find sirve para buscar archivos por ejemplo con ".jpg"
#Despues entra en el bucle while y con cada iteracion se guarda el nombre sin su extension y eso se hace con el "basename". Luego lo guarda en la variable nombre
#En el if pide que la varible nombre terminada en "a.jpg" se guarde en la carpeta femenina, de lo contrario lo hace en la masculina. 


#creamos la carpeta .zip para guardar las respectivas carpetas
zip -r imagenes_categorizadas.zip ImagenesMasculinas
zip -r imagenes_categorizadas.zip ImagenesFemeninas

#ELiminamos dichas carpetas.
rm -r ImagenesMasculinas
rm -r ImagenesFemeninas


