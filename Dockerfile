FROM ubuntu:latest
RUN apt-get update && apt-get install -y imagemagick && apt-get install -y wget && apt-get install curl
COPY comprimir.sh descomprimir.sh procesar.sh menu.sh generar.sh ~/script/
WORKDIR /script
VOLUME ["$PWD:/script"]
CMD ["bash","/script/menu.sh"]
