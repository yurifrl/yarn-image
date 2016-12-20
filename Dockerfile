FROM node:alpine

ENV PATH /root/.yarn/bin:$PATH

RUN apk update
RUN apk add curl bash binutils tar
RUN rm -rf /var/cache/apk/*
RUN touch ~/.bashrc
RUN curl -o- -L https://yarnpkg.com/install.sh | bash
RUN apk del curl tar binutils bash
