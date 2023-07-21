#!/bin/bash

directorio="$PWD"
if ls *.jpg >/dev/null 2>&1; then #Con este if corroboramos que existan archivos para comprimir, de lo contrario no se ejecuta el script y te devuelve un msj de que no existen tales archivos
# La redireccion ">/dev/null" envia la salida estandar (STDOUT) de "ls" a ">/dev/null", lo que significa que la lista de archivos no se mostrará en la terminal. Luego "2>&1" redirige la salida de error (STDERR) a la misma ubicacion que STDOUT, lo que evita que aparezcan mensajes de error en la terminal.
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
#En el if pide que la variable nombre terminada en "a.jpg" se guarde en la carpeta femenina, de lo contrario lo hace en la masculina. 

#Se crea el archuvo ".zip" y se comprimen las carpetas generadas anteriormente, junto con la suma de verificacion.
	zip -r imagenes_categorizadas.zip ImagenesMasculinas
	zip -r imagenes_categorizadas.zip ImagenesFemeninas
	zip -r SumaVerificacion.zip verificacion.txt

	#ELiminamos dichas carpetas.
	rm -r ImagenesMasculinas
	rm -r ImagenesFemeninas
	rm verificacion.txt
else
	echo "No existe ningun archivo para comprimir"
fi



