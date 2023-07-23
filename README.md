
### Trabajo practico EDP 2023

**EDP-PRACTICA-INTEGRADORA-ATOCHE-CALCIA-HECK**

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
