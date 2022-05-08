FROM node:16

WORKDIR /app

RUN git clone https://github.com/bcoin-org/bcoin

RUN cd bcoin && npm install && ./bin/bcoin
