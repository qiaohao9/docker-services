FROM node:22.9.0-alpine

ARG TW_VERSION=v5.3.5
LABEL maintainer="qiaohao.peng <qiaohao.peng@outlook.com>"

RUN npm i -g tiddlywiki@${TW_VERSION}

COPY entrypoint.sh entrypoint.sh

EXPOSE 8080
VOLUME /etc/tiddlywiki

ENTRYPOINT ["/entrypoint.sh"]

