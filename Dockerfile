FROM alpine:latest

WORKDIR /minecraft_server

RUN apk add --no-cache wget
RUN wget https://piston-data.mojang.com/v1/objects/3872a7f07a1a595e651aef8b058dfc2bb3772f46/server.jar
RUN apk add --no-cache openjdk25
RUN jar -xf server.jar
RUN echo "eula=true" > eula.txt

EXPOSE 25565

CMD  java -Xmx4G -Xms4G -jar server.jar nogui