SET DIR=%~dp0
docker build -t 01alchemist/node-pg:10.5.0 - < $DIR/Dockerfile
docker push 01alchemist/node-pg:10.5.0
