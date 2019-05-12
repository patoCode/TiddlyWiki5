FROM node:alpine
RUN mkdir -p /opt/app
WORKDIR /opt/app
COPY package.json .
RUN npm install --quiet
RUN sudo npm install -g tiddlywiki
RUN tiddlywiki mywiki --init server
RUN tiddlywiki mywiki --listen
EXPOSE 8080
CMD ["node","server"]
