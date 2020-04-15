FROM node:13.12.0-alpine

WORKDIR /app

RUN apk update && \
    npm install -g npm @vue/cli