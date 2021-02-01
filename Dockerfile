FROM node:lts-buster-slim

ARG NODE_ENV=production
ENV NODE_ENV=$NODE_ENV

WORKDIR /usr/src/app
COPY package*.json ./

RUN npm install

COPY app.js ./
COPY bin ./bin
COPY public ./public
COPY routes ./routes
copy views ./views

USER node

CMD [ "node", "./bin/www" ]