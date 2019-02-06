FROM node:11-alpine

LABEL maintainer "Andrea Pellegrini <uschti@gmail.com>"

RUN apk update \
  && apk add --update alpine-sdk \
  && apk del alpine-sdk \
  && rm -rf /tmp/* /var/cache/apk/* *.tar.gz ~/.npm \
  && npm cache verify

RUN npm install -g @angular/cli