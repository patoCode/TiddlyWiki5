FROM node:alpine
RUN npm install -g tiddlywiki
RUN npm install -g tiddlywiki
RUN tiddlywiki tiddlywikipato --init server
RUN tiddlywiki tiddlywikipato --listen
EXPOSE 8080
