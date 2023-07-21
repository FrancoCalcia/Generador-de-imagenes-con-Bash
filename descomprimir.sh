#!/bin/bash

while true
do

#Estos mensajes se van a imprimir por pantalla y luego el usuario va a poner la opcion que desee
#La entrada se va a guardar en la variable 'opcion', para que posteriormente se interactue con ella.
	echo "¿Qué desea descomprimir?"
	echo "1. Imágenes comprimidas"
	echo "2. Suma de verificaciones"
	echo "3. Si no desea descomprimir"
	read opcion
	
	# Verificar si la entrada es un número válido
	if [[ "$opcion" =~ ^[0-9]+$ ]]; then	
  		if (("$opcion" == 1)); then #Si la entrada es un numero válido, va a entrar en este if donde se evalua la condicion ingresada y se procederá a correr dicha la condicion.
  			if ls imagenes_categorizadas.zip>/dev/null 2>&1; then
    				unzip imagenes_categorizadas.zip
    				rm -r imagenes_categorizadas.zip
    			else
    				echo "No existe el archivo para descomprimir"
    			fi	
  		elif (("$opcion" == 2)); then
  			if ls SumaVerificacion.zip>/dev/null 2>&1; then
    				unzip SumaVerificacion.zip
    				rm -r SumaVerificacion.zip
    			else
    				echo "No existe el archivo para descomprimir"
    			fi	
  		elif (("$opcion" == 3)); then
    			echo "Se procede a cerrar el script..."
    			break
  		else
    			echo "Su opción ingresada no es correcta."
  	  	fi
	else
  		echo "Por favor, ingrese un número válido como opción."
	fi

  
	
done

