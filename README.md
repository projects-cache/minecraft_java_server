# minecraft_java_server
Docker image for a Minecraft Java Edition server

# How to build the image and push to Docker Hub:
```
docker buildx build --platform linux/amd64,linux/arm64 -t projectscache/minecraft_java_server .
```

```
docker push projectscache/minecraft_java_server
```

# How to pull the image and start the server:
```
docker pull projectscache/minecraft_java_server
```

```
docker run -d -p 25565:25565 --name minecraft_server projectscache/minecraft_java_server:latest
```
