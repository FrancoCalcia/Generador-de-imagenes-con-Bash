#!/bin/bash

while true
do

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

