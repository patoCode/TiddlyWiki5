FROM node:10
RUN mkdir -p /tiddly
COPY . /tiddly/
WORKDIR /tiddly/
RUN npm install -g tiddlywiki
RUN tiddlywiki tiddlywikipato --init server
RUN tiddlywiki tiddlywikipato --listen
