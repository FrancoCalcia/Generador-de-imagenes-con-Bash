FROM ubuntu:latest
RUN apt-get update && apt-get install -y imagemagick && apt-get install -y wget && apt-get install -y curl && apt-get install -y zip
WORKDIR /script
COPY comprimir.sh descomprimir.sh procesar.sh menu.sh generar.sh /script
RUN chmod +x comprimir.sh descomprimir.sh procesar.sh menu.sh generar.sh /script
VOLUME ["$PWD:/script"]
CMD ["bash","/script/menu.sh"]
