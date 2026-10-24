# minecraft_java_server
Docker image for a Minecraft Java Edition server

# How to build the image
```
docker buildx build --platform linux/amd64,linux/arm64 -t projectscache/minecraft_java_server .
```

# How to pull the image:
```
docker pull projectscache/minecraft_java_server:latest
```

# Start the server:

```
docker run -d -p 25565:25565 --name minecraft_server projectscache/minecraft_java_server:latest
```
