# simple-node-web-app
FROM mhart/alpine-node:4.4
MAINTAINER Shahidh <shahidh@hasura.io>
RUN mkdir /app
COPY app/runserver.sh /runserver.sh
COPY app/src/package.json  /app/package.json
RUN cd /app && npm install
COPY app/src/server.js /app/server.js
CMD ["/runserver.sh"]
