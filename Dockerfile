FROM node:latest
RUN mkdir /src
WORKDIR /src
RUN npm install -g tiddlywiki
EXPOSE 8080
CMD ["node", "init-and-run-wiki"]


