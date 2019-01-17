SET DIR=%~dp0
docker build -t 01alchemist/node:8.10 .
docker push 01alchemist/node:8.10
