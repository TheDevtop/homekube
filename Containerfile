FROM alpine:edge
RUN apk add tmux git go jq minio-client curl
COPY gotty /usr/bin/gotty
ENV GOTTY_PORT=8079
ENV TERM=xterm
EXPOSE 8079/tcp
WORKDIR /root
VOLUME /root/
CMD ["/usr/bin/gotty", "-w", "/bin/ash", "-il"]
