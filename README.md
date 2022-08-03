# nginxproxy-image
nginx tcp/http image

### http proxy
```shell
docker run -d --restart=always \
-p 8080:8080 \
-e HTTP_LISTEN_PORT=8080 \
-e HTTP_SERVER_HOST=172.17.1.100 \
-e HTTP_SERVER_PORT=8888 \
#Modifying host during reverse proxy (Optional)
-e HTTP_HOST="a.com" \
#Remove HTTP header during reverse proxy (Optional)
-e HTTP_HIDE_HEADER="proxy_hide_header x-frame-options;\n" \
cubegroup/nginx-fast-http
```

### tcp proxy
```shell
docker run -d --restart=always \
-p 8080:8080 \
-e TCP_LISTEN_PORT=8080 \
-e TCP_SERVER_HOST=172.17.1.100 \
-e TCP_SERVER_PORT=8089 \
cubegroup/nginx-fast-tcp
```