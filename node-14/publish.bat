SET DIR=%~dp0
docker build -t 01alchemist/node:14 - < $DIR/Dockerfile
docker push 01alchemist/node:14
