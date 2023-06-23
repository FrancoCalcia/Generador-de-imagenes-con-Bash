#!/bin/bash
imagenes=""
checksum=""
aux=0

	while [ $aux eq 0 ]; 
	do
		echo: "ingrese nombre de carpeta imagenes: "
		read imagenes
		echo: "ingrese nombre del suma de verificacion: "
		read checksum

		if imagenes = "Imagenes" and checksum = "checksum"
			unzip archivo.zip -d carpeta
			sha256sum ./descargas > checksum.txt
			aux=1
			"Los archivos se descargaron con éxito"
		else	
			"no existen los archivos con ese nombre"
			aux=0
			
	done	
	