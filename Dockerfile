ARG NODE_VERSION="15.7-alpine3.10"

FROM node:${NODE_VERSION}

COPY . /christa

RUN npm config set registry https://registry.npm.taobao.org && \
    npm i -g serve

WORKDIR /christa

EXPOSE 5000
ENTRYPOINT [ "serve" ]