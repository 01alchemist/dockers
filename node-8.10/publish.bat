SET DIR=%~dp0
docker build -t 01alchemist/node:8.10 - < $DIR/Dockerfile
docker push 01alchemist/node:8.10
