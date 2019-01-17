SET DIR=%~dp0
docker build -t 01alchemist/aws-cli:1.16.90 - < $DIR/Dockerfile
docker push 01alchemist/aws-cli:1.16.90
