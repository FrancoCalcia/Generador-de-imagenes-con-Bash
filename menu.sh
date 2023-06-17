#!/bin/bash

echo "---------Menú----------"
echo "1. Generar imagenes"
echo "2. Descargar imagenes"
echo "3. Procesar imagenes"
echo "4. Comprimir imagenes"
echo "5. Salir del menú"
echo "-----------------------"
echo "Elija la opción que desee:"
read opcion

while true
do
	if (("$opcion"==1)); then
		./generar.sh		
		echo "Puede proceder a elegir otra opción"
		echo "Si desea ver las opciones nuevamente, presione '6'."
		read opcion
	elif  (("$opcion"==2)); then
		./descargar.sh
		echo "Imagenes descargadas con éxito."
		echo "Puede proceder a elegir otra opción"
		echo "Si desea ver las opciones nuevamente, presione '6'."
                read opcion
	elif  (("$opcion"==3)); then
		./procesar.sh
		echo "Imagenes procesadas con éxito."
		echo "Puede proceder a elegir otra opción"
		echo "Si desea ver las opciones nuevamente, presione '6'."
                read opcion
	elif  (("$opcion"==4)); then
		./comprimir.sh
		echo "Imagenes comprimidas con éxito."
		echo "Puede proceder a elegir otra opción"
		echo "Si desea ver las opciones nuevamente, presione '6'."
                read opcion
	elif (("$opcion"==5)); then
		echo "Cerrando menú..."
		break
	elif  (("$opcion"==6)); then
		echo "---------Menú----------"
		echo "1. Generar imagenes"
		echo "2. Descargar imagenes"
		echo "3. Procesar imagenes"
		echo "4. Comprimir imagenes"
		echo "5. Salir del menú"
		echo "-----------------------"
		echo "Elija la opción que desee:"
		read opcion
	else
		echo "Ninguna opción es correcta"
		echo "Si desea ver las opciones nuevamente, presione '6'."
		read opcion
	
	fi

done

