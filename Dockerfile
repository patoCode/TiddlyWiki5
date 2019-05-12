FROM node:latest
RUN mkdir /src
WORKDIR /src
RUN npm install -g tiddlywiki

RUN tiddlywiki wikidemo --init server
RUN tiddlywiki wikidemo --listen

EXPOSE 8080

