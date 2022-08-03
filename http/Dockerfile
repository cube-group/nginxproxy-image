FROM nginx:alpine

ENV HTTP_LISTEN_PORT "80"
ENV HTTP_SERVER_HOST "localhost"
ENV HTTP_SERVER_PORT "8080"
#host header pass
ENV HTTP_HOST ""
#proxy_hide_header need add # end
ENV HTTP_HIDE_HEADER ""

RUN echo "https://mirrors.aliyun.com/alpine/v3.16/main/" > /etc/apk/repositories && \
    echo "https://mirrors.aliyun.com/alpine/v3.16/community/" >> /etc/apk/repositories && \
    apk update

COPY run.sh /run.sh
COPY nginx.conf /etc/nginx/nginx.conf

CMD ["sh","/run.sh"]
