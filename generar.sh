#!/bin/bash

# Obtener los nombres de personas desde el archivo CSV en el enlace utilizando curl y awk
nombres=($(curl -s "https://raw.githubusercontent.com/fernandezpablo85/name_suggestions/master/assets/dict.csv" | awk -F ',' 'NR>1 {print $1}'))


while true
do
	# Solicitar al usuario la cantidad de imágenes que desea generar
	echo "Ingrese la cantidad de imágenes que desea generar ['n' para salir]:"
	read cantidad_imagenes

	#Descarga de imágenes, renombrarlas y asignar nombres aleatorios
	for ((i=1; i<=cantidad_imagenes; i++)); do
	
	#Seleccionar nombre aleatorio
    		nombre_aleatorio=${nombres[$RANDOM % ${#nombres[@]}]}
    	#Descargar imagen
    		wget "https://source.unsplash.com/random/900x700/?person" -O "$nombre_aleatorio.jpg"
    		sleep 1
	done
	
	#S el usuario ingresa la letra 'n' se rompe el bucle y finaliza la ejecucion del script
	if [ "$cantidad_imagenes" == 'n' ]; then
		break
	fi
done
