FROM nginx:stable-alpine

RUN apk add --no-cache --update \
      apache2-utils

RUN mkdir -p /var/www/html

WORKDIR /etc/nginx

COPY nginx.conf .
COPY docker-entrypoint.sh .

# use SIGQUIT for graceful shutdown
# c.f. http://nginx.org/en/docs/control.html
STOPSIGNAL SIGQUIT

ENTRYPOINT ["/bin/sh","docker-entrypoint.sh"]
