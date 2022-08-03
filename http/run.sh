#!/bin/sh

nginx_conf="/etc/nginx/nginx.conf"

if [ ! -z "$HTTP_LISTEN_PORT" ]; then
 sed -i "s#listen-port#${HTTP_LISTEN_PORT}#g" ${nginx_conf}
fi

if [ ! -z "$HTTP_SERVER_HOST" ]; then
 sed -i "s#server-host#${HTTP_SERVER_HOST}#g" ${nginx_conf}
fi

if [ ! -z "$HTTP_SERVER_PORT" ]; then
 sed -i "s#server-port#${HTTP_SERVER_PORT}#g" ${nginx_conf}
fi

if [ ! -z "$HTTP_HOST" ]; then
 sed -i "s#\$host#${HTTP_HOST}#g" ${nginx_conf}
fi

if [ ! -z "$HTTP_HIDE_HEADER" ]; then
  sed -i "s#proxy_hide_header#${HTTP_HIDE_HEADER}#g" ${nginx_conf}
else
  sed -i "s#proxy_hide_header##g" ${nginx_conf}
fi

cat ${nginx_conf}

nginx -g "daemon off;"
