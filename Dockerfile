FROM node:alpine
RUN \
    apk add --no-cache git && \
    git clone https://github.com/jsososo/QQMusicApi.git && \
    cd QQMusicApi && npm i && npm start
EXPOSE 3300
