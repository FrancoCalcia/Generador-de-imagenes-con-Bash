
### Generador de imagenes

**Trabajo realizado en Bash**

-El programa consiste en generar un contenedor que al ejecutarse presente un menú de opciones para procesar un lote de imágenes. Las imágenes a analizar son descargadas o generadas desde internet y se almacenan dentro de un contenedor para su posterior análisis. 

Se programan los siguientes scripts:

• generar.sh: Se generan imagenes desde un servicio web. Se puede indicar por argumento cuantas imágenes generar y se le asignan nombres de archivo al azar de una lista de nombres de personas. Luego se genera un archivo con su suma de verificación.

• descomprimir.sh: Se puede indicar por argumento dos archivos a comprimir (uno con las imágenes comprimidas y otro con una suma de verificación).

• procesar.sh: Se recortan las imágenes a una resolución de 512*512 con una utilidad como imagemagick. Solamente se procesan aquellas imágenes que tengan nombres de personas válidos. Entiéndase por nombres de personas válidos a cualquier combinación de palabras que empiecen con un letra mayúscula y sigan por minúsculas.

• comprimir.sh: Finalmente, luego de procesadas las imágenes:
– Se genera un archivo con la lista de nombres de todas las imágenes.
– Se genera un archivo con el total de personas cuyo nombre finaliza con la letra a.
– Por último, se genera un archivo comprimido que incluya los archivos generados en los items anteriores y todas las imágenes.

• menu.sh: Debe incluirse un menú para elegir cada una de las opciones anteriores.

**Como correr el programa**

- Debe tener instalado Docker en la pc
- Luego ejecutar los siguientes comandos:

#### Código en consola

``
Paso 1:
``
````
docker build -t edptuia .
````
``
Paso 2:
``
````
docker run -it --name mi_contenedor -v $(pwd):/script edptuia
````
