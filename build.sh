#!/bin/sh

path=$(pwd)
version=$(cat $path/version)
echo $version
docker buildx create --use --name build --node build --driver-opt network=host
build()
{
  docker buildx build --platform $1 -t $2 -f $3 $4 --push
}

build linux/arm64/v8,linux/amd64 cubegroup/nginx-fast-http:$version $path/http/Dockerfile $path/http
build linux/arm64/v8,linux/amd64 cubegroup/nginx-fast-tcp:$version $path/tcp/Dockerfile $path/tcp