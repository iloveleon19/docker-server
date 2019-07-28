FROM golang:1.12.7-alpine

RUN apk add --no-cache \
    bash \
    go \
    git \
    curl

COPY --from=gosu/assets /opt/gosu /opt/gosu
RUN set -x \
    && /opt/gosu/gosu.install.sh \
    && rm -fr /opt/gosu

RUN set -eux; \
    addgroup -g 82 -S www-data; \
    adduser -u 82 -D -S -G www-data www-data

RUN go get -u github.com/gin-gonic/gin \
    && go get -u github.com/go-redis/redis \
    && go get -u github.com/go-sql-driver/mysql


RUN echo "umask 0002" >> /home/www-data/.bashrc
