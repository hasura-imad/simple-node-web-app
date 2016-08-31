# simple-node-web-app
FROM mhart/alpine-node:4.4
MAINTAINER Shahidh <shahidh@hasura.io>
ADD . /
WORKDIR app
RUN npm install
CMD ["/app/runserver.sh"]
