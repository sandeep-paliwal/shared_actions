FROM node:12-alpine

ENV NPM_CONFIG_PREFIX=/home/node/.npm-global

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app

USER node

RUN npm install -g @adobe/aio-cli
RUN npm link
RUN aio app deploy -v
