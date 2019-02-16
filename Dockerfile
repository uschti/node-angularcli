FROM node:11-slim

LABEL maintainer "Andrea Pellegrini <uschti@gmail.com>"

RUN apt-get update && \
    apt-get install -y libxtst6 libnss3 libxss1 libatk-bridge2.0-0 libgtk-3-0 libasound2 procps && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN npm install -g @angular/cli
