From node:lts-alpine3.11
#RUN  sed -i 's/dl-cdn.alpinelinux.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apk/repositories 
RUN  apk add --no-cache git
RUN git clone https://github.com/jsososo/QQMusicApi.git /QQMusicApi
RUN cd /QQMusicApi
RUN npm install
RUN apk del git
EXPOSE 3300
ENTRYPOINT ["cd /QQMusicApi && npm install"]
