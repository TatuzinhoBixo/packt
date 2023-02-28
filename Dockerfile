FROM alpine:latest
LABEL maintainer="Tatu de bixo <celuw_lima@hotmail.com>"
LABEL description="Tesste de DockerFile"
RUN apk add --update nginx 
RUN rm -rf /var/cache/apk/*
RUN mkdir -p /tmp/nginx/
COPY files/nginx.conf /etc/nginx/nginx.conf
COPY files/default.conf /etc/nginx/conf.d/default.conf
ADD files/html.tar.gz /usr/share/nginx/
EXPOSE 80/tcp
ENTRYPOINT ["nginx"]
CMD ["-g", "daemon off;"]
