FROM nginx:1.16.0-alpine

RUN apk add --no-cache bash openssl

RUN mkdir /etc/nginx/ssl

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/nginx/ssl/nginx.key \
    -out /etc/nginx/ssl/nginx.crt \
    -subj "/C=TW/ST=Taiwan/L=Taichung/O=Leon Studio/OU=Leon Software Group/CN=Rational Performance Tester CA/emailAddress=iloveleon19@gmail.com"


