FROM node:latest

ARG DEBIAN_FRONTEND=noninteractive

ENV PATH /opt/node/bin:$PATH

ADD . /app

WORKDIR /app

RUN npm install

CMD ["node", "server.js"]