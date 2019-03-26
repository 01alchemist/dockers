DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
docker build -t 01alchemist/node-pg:10.5.0-rev2 - < $DIR/Dockerfile
docker push 01alchemist/node-pg:10.5.0-rev2
