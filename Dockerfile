FROM node:10
RUN mkdir -p /Tiddly
COPY . /Tiddly/
WORKDIR /Tiddly/
RUN npm install
EXPOSE 1000
CMD ["node", "server"]