FROM alpine:3.2

MAINTAINER Luca Corbo <lu.corbo@gmail.com>

ENV AGLIO_VERSION 2.2.0

RUN apk --update add \
  nodejs \
  python \
  make \
  g++

RUN npm install -g aglio@${AGLIO_VERSION}

RUN rm -rf /var/cache/apk/* \
  && rm -rf /tmp/npm*

VOLUME /data

WORKDIR /data

EXPOSE 3000 35729

ENTRYPOINT ["aglio"]
