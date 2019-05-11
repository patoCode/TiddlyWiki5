FROM node:10
RUN mkdir -p /tiddly
COPY . /tiddly/
WORKDIR /tiddly/
RUN npm install
EXPOSE 3000
CMD ["node", "server"]
