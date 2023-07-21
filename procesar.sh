if ls *.jpg >/dev/null 2>&1; then
#Con este if corroboramos que existan archivos para comprimir, de lo contrario no se ejecuta el script y te devuelve un msj de que no existen tales archivos
# La redireccion ">/dev/null" envia la salida estandar (STDOUT) de "ls" a ">/dev/null", lo que significa que la lista de archivos no se mostrará en la terminal. Luego "2>&1" redirige la salida de error (STDERR) a la misma ubicacion que STDOUT, lo que evita que aparezcan mensajes de error en la terminal.

	archivos=$(ls *.jpg) # Obtener la lista de archivos con extensión .jpg

# Iterar sobre cada archivo
  for archivo in $archivos; do

    # Verificar si el primer caracter es una letra mayúscula. De ser asi, el archivo '.jpg' procedera a recortarse.
    if [[ $archivo =~ ^[[:upper:]][[:lower:]]* ]]; then
        convert "$archivo" -resize 512x512^! "$archivo"
    else
    #SI dicho archivo no comienza con una letra mayuscula, se va a imprimir por pantalla que no corresponde
        echo "El archivo $archivo no comienza con una letra mayúscula."
    fi
  done
else
	echo "No existe ningun archivo para procesar"
fi 
