#!/bin/bash

# Obtener los nombres de personas desde el archivo CSV en el enlace utilizando curl y awk
nombres=($(curl -s "https://raw.githubusercontent.com/fernandezpablo85/name_suggestions/master/assets/dict.csv" | awk -F ',' 'NR>1 {print $1}'))

# Solicitar al usuario la cantidad de imágenes que desea generar
echo "Ingrese la cantidad de imágenes que desea generar:"
read cantidad_imagenes

# Descarga de imágenes, renombrarlas y asignar nombres aleatorios
for ((i=1; i<=cantidad_imagenes; i++)); do

# Seleccionar nombre aleatorio
    nombre_aleatorio=${nombres[$RANDOM % ${#nombres[@]}]}
	echo "random: $RANDOM"
    # Descargar imagen
    wget "https://source.unsplash.com/random/900x700/?person" -O "$nombre_aleatorio.jpg"
    sleep 1

done

# Crear carpeta zip y guardar las imágenes editadas
zip imagenes_transformadas.zip *_edit.jpg

# Borrar todo archivo que termine en .jpg
rm *.jpg

#suma de verificacion
sha256sum prueba.sh > verificacion.txt