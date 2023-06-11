directorio="/home/facu/Desktop/test"

# 1) iteracion sobre los archivos .jpg en el directorio
for imagen in "$directorio"/*.jpg; do
    nombres=$(basename "$imagen")

    # Verificar si el nombre del archivo cumple con el patrón
    if [[ $nombres =~ ^[A-Z][a-z]+ ]]; then
# 2) recorte de imagen 
	convert "$nombre_aleatorio.jpg" -resize 512x512^! "${nombre_aleatorio%.*}_edit.jpg"
    fi
done
