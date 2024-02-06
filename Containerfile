LABEL org.opencontainers.image.source = "https://github.com/TheDevtop/homekube"
LABEL org.opencontainers.image.description = "Home Environment for Kubernetes"
FROM alpine:edge
RUN apk add tmux git vim jq minio-client curl
COPY gotty /usr/bin/gotty
ENV GOTTY_PORT=8079
ENV TERM=xterm
EXPOSE 8079/tcp
WORKDIR /root
VOLUME /root/
CMD ["/usr/bin/gotty", "-w", "/bin/login", "-f", "root"]
