DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
docker build -t 01alchemist/node:8.10 - < $DIR/Dockerfile
docker push 01alchemist/node:8.10
