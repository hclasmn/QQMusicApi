FROM node:alpine
WORKDIR QQMusicApi
RUN \
    apk add --no-cache git && \
    git clone https://github.com/jsososo/QQMusicApi.git /QQMusicApi/ && \
    npm i
CMD ["npm", "start"]
EXPOSE 3300
