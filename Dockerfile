FROM node:latest
RUN mkdir /src
WORKDIR /src
RUN npm install -g tiddlywiki
RUN tiddlywiki wikipato --init server
EXPOSE 8080
CMD ["node", "start"]


