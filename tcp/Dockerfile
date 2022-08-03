FROM nginx:alpine

ENV TCP_LISTEN_PORT "80"
ENV TCP_SERVER_HOST "localhost"
ENV TCP_SERVER_PORT "8080"

RUN echo "https://mirrors.aliyun.com/alpine/v3.16/main/" > /etc/apk/repositories && \
    echo "https://mirrors.aliyun.com/alpine/v3.16/community/" >> /etc/apk/repositories && \
    apk update

COPY run.sh /run.sh
COPY nginx.conf /etc/nginx/nginx.conf

CMD ["sh","/run.sh"]
