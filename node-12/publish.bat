SET DIR=%~dp0
docker build -t 01alchemist/node:12 - < $DIR/Dockerfile
docker push 01alchemist/node:12
