FROM alpine:edge

Maintainer Xijin Xiao (http://github.com/xiaoxijin/)

RUN echo "http://nl.alpinelinux.org/alpine/edge/main" > /etc/apk/repositories \
&& echo "http://nl.alpinelinux.org/alpine/edge/testing/" >> /etc/apk/repositories \
&& echo "http://nl.alpinelinux.org/alpine/edge/community/" >> /etc/apk/repositories \
&& echo "nameserver 8.8.8.8" >> /etc/resolv.conf && apk update && apk upgrade


ENV WORK_DIR /work/
WORKDIR $WORK_DIR
RUN mkdir -p $WORK_DIR
RUN chmod 777 -R $WORK_DIR

