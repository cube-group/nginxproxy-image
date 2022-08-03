#!/bin/sh

nginx_conf="/etc/nginx/nginx.conf"

if [ ! -z "$TCP_LISTEN_PORT" ]; then
 sed -i "s#listen-port#${TCP_LISTEN_PORT}#g" ${nginx_conf}
fi

if [ ! -z "$TCP_SERVER_HOST" ]; then
 sed -i "s#server-host#${TCP_SERVER_HOST}#g" ${nginx_conf}
fi

if [ ! -z "$TCP_SERVER_PORT" ]; then
 sed -i "s#server-port#${TCP_SERVER_PORT}#g" ${nginx_conf}
fi

nginx -g "daemon off;"
