FROM alpine:3.2

MAINTAINER chrisdaish@gmail.com

RUN apk update \
    && apk add nginx=1.8.0-r1 \
    && rm -rf /var/cache/apk/*

# forward request and error logs to docker log collector
RUN ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
