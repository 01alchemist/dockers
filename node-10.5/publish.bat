SET DIR=%~dp0
docker build -t 01alchemist/node:10.5.0-rev3 - < $DIR/Dockerfile
docker push 01alchemist/node:10.5.0-rev3
