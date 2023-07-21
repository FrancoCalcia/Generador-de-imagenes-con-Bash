#!/bin/bash

while true
do

#Estos mensajes se van a imprimir por pantalla y luego el usuario va a poner la opcion que desee
#La entrada se va a guardar en la variable 'opcion', para que posteriormente se interactue con ella.
echo "---------Menú----------"
echo "1. Generar imagenes"
echo "2. Descomprimir imagenes"
echo "3. Procesar imagenes"
echo "4. Comprimir imagenes"
echo "5. Salir del menú"
echo "-----------------------"
echo "Elija la opción que desee:"
read opcion

# Verificar si la entrada es un número válido
  if [[ "$opcion" =~ ^[0-9]+$ ]]; then
  #Si la entrada es un numero válido, va a entrar en el siguiente if donde se evalua la condicion ingresada y se procederá a correr dicha la condicion.
	if (("$opcion"==1)); then
		./generar.sh		
		echo "Puede proceder a elegir otra opción"
		
	elif  (("$opcion"==2)); then
		./descomprimir.sh
		echo "Puede proceder a elegir otra opción"
		
	elif  (("$opcion"==3)); then
		./procesar.sh
		echo "Puede proceder a elegir otra opción"
		
	elif  (("$opcion"==4)); then
		./comprimir.sh
		echo "Puede proceder a elegir otra opción"
		
	elif (("$opcion"==5)); then
		echo "Cerrando menú..."
		break
	else
		echo "Ninguna opción es correcta"
	fi
  else
  	echo "Por favor, ingrese un número válido como opción."
  fi	
	
	

done

