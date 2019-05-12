FROM node:alpine
ENV TIDDLYWIKI_VERSION=5.1.19

RUN npm install -g tiddlywiki@${TIDDLYWIKI_VERSION}

EXPOSE 8080

VOLUME /tiddlywiki
WORKDIR /tiddlywiki

ENTRYPOINT ["/sbin/tini", "--", "tiddlywiki"]
CMD ["--help"]
CMD ["node","server"]
