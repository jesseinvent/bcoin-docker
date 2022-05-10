FROM node:16

RUN npm install -g npm@8.9.0

WORKDIR /app

RUN git clone https://github.com/bcoin-org/bcoin

RUN cd bcoin && npm rebuild && ./bin/bcoin --spv --wallet-http-host=0.0.0.0
