#!/bin/sh

docker build --platform linux/amd64 -t cubegroup/nginx-fast-http -f http/Dockerfile http
docker build --platform linux/amd64 -t cubegroup/nginx-fast-tcp -f tcp/Dockerfile tcp
docker push cubegroup/nginx-fast-http
docker push cubegroup/nginx-fast-tcp
