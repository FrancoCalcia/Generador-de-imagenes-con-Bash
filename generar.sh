#!/bin/bash

# Obtener los nombres de personas desde el archivo CSV en el enlace utilizando curl y awk
#EL comando curl funciona igual al 'wget', con este comando descargamos el contenido del archivo '.csv'. EL parametro '-s'(silent) hace que el curl funcione en modo silencioso, sin mostrar mensajes en la terminal. EN la parte del 'awk' se utiliza para procesar y filtrar el contenido del archivo 'CSV'.
#"-F ',' " especifica que awk utilizará la coma como delimitador de campos en el archivo CSV.
#'NR>1'indica que se omita la primer linea del archivo CSV, Es solo por si el archivo llegase a contener encabezados que en este caso queremos evitarlos.
#'NR>1 && $1 ~ /^[A-Z][[:lower:]]+$/ {print $1}': ESta es una expresion que filtra los nombres que cumplen con la expresion donde verifica que la palabra comience con una letra mayuscula y luego siga con uno o mas letras minusculas.

nombres=($(curl -s "https://raw.githubusercontent.com/adalessandro/EdP-2023-TP-Final/main/dict.csv" | awk -F ',' 'NR>1 && $1 ~ /^[A-Z][[:lower:]]+$/ {print $1}'))


while true
do
	# Solicitar al usuario la cantidad de imágenes que desea generar
	echo "Ingrese la cantidad de imágenes que desea generar ['n' para salir]:"
	read cantidad_imagenes
	
	
#Si el usuario ingresa la letra 'n' se rompe el bucle y finaliza la ejecucion del script
  if [ "$cantidad_imagenes" == 'n' ]; then
		break	
  elif [[ "$cantidad_imagenes" =~ ^[0-9]+$ ]]; then #Si el usuario ingresa algo distinto de un numero, no va a entrar al bucle y no genera un error.
	
	#Descarga de imágenes, renombrarlas y asignar nombres aleatorios
	for ((i=1; i<=cantidad_imagenes; i++)); do
	
	#Seleccionar nombre aleatorio
    		nombre_aleatorio=${nombres[$RANDOM % ${#nombres[@]}]}
    	#Descargar imagen
    		wget "https://source.unsplash.com/random/900x700/?person" -O "$nombre_aleatorio.jpg"
    		sleep 1 #COn este sleep indicamos que tenga un retraso de 1 segundo entre descarga.
	done
	
	
  else
  	echo "Por favor, ingrese un número válido como opción."
  fi	
done


# Suma de verificación
sha256sum generar.sh > verificacion.txt
