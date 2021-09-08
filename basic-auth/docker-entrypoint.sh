#!/bin/bash
set -e

if [ -z $username ]; then
  echo >&2 "username must be set"
  exit 1
fi

if [ -z $password ]; then
  echo >&2 "password must be set"
  exit 1
fi

htpasswd -bBc /etc/nginx/.htpasswd $username $password

exec nginx -g "daemon off;"
