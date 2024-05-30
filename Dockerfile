# FROM alpine:edge
FROM alpine@sha256:e31c3b1cd47718260e1b6163af0a05b3c428dc01fa410baf72ca8b8076e22e72

RUN apk add --no-cache yt-dlp=2024.05.27-r0 bash=5.2.26-r0 curl=8.7.1-r0 \
 && adduser -h /home/appuser -s /bin/bash -D -u 1000 appuser

USER appuser
WORKDIR /home/appuser
ENTRYPOINT ["/bin/bash"]
