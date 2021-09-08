FROM nginx:stable-alpine

RUN apk add --no-cache \
  apache2-utils

WORKDIR /etc/nginx

COPY nginx.conf .
COPY docker-entrypoint.sh .

CMD ["/bin/sh","docker-entrypoint.sh"]
