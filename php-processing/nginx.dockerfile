FROM nginx:stable-alpine

RUN mkdir -p /var/www/html

COPY nginx.conf /etc/nginx/nginx.conf
