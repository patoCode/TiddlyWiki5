FROM node:alpine

RUN sudo npm install -g tiddlywiki

## Setup wiki volume
#VOLUME /var/lib/tiddlywiki
#WORKDIR /var/lib/tiddlywiki
#
## Add init-and-run script
#ADD tiddlyweb_host /tiddlyweb_host_template
#ADD init-and-run-wiki /usr/local/bin/init-and-run-wiki

# Meta
#CMD sudo ["/usr/local/bin/init-and-run-wiki"]
RUN tiddlywiki wikidemo --init server
RUN tiddlywiki wikidemo --listen
EXPOSE 8080
