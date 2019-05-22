FROM node:lts-alpine

RUN apk add --no-cache bash

RUN chown -R node:node /usr/local/lib/node_modules \
    && chown -R node:node /usr/local/bin

USER node

RUN npm install -g @angular/cli
RUN npm install -g @vue/cli