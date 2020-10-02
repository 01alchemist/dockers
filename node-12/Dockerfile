FROM node:12.18.4-alpine

ENV TZ=Europe/Berlin
RUN apk add tzdata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get install curl

RUN npm i -g yarn lerna@3 --force
