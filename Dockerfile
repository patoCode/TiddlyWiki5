FROM node:latest
RUN mkdir /src
WORKDIR /src
RUN npm install -g tiddlywiki
EXPOSE 8080

CMD tiddlywiki wikidemo --init server
CMD tiddlywiki wikidemo --listen



