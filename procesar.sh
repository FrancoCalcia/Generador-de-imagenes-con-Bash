if ls *.jpg >/dev/null 2>&1; then
# Obtener la lista de archivos con extensión .jpg
	archivos=$(ls *.jpg)

# Iterar sobre cada archivo
  for archivo in $archivos; do

    # Verificar si el primer caracter es una letra mayúscula
    if [[ $archivo =~ ^[[:upper:]][[:lower:]]* ]]; then
        convert "$archivo" -resize 512x512^! "$archivo"
    else
        echo "El archivo $archivo no comienza con una letra mayúscula."
    fi
  done
else
	echo "No existe ningun archivo para procesar"
fi 
