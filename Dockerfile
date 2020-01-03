FROM node:lts-alpine3.11

MAINTAINER  rooqs rooqs@gmail.com

RUN  sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && apk update && apk add rsync openssh

RUN npm config set registry https://registry.npm.taobao.org && npm install pm2 typescript ts-node -g