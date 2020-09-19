From node:lts-alpine3.11
#RUN  sed -i 's/dl-cdn.alpinelinux.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apk/repositories 
RUN  apk add --no-cache git
RUN git clone git@github.com:jsososo/QQMusicApi.git /QQMusicApi
RUN cd /QQMusicApi
RUN npm install
RUN apk del git
EXPOSE 3400
ENTRYPOINT ["npm start"]