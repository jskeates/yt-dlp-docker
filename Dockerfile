# FROM alpine:edge
FROM alpine@sha256:3e44438281baf26907675b99c9a4a421c4d4a57c954120327e703aa8329086bd

RUN apk add --no-cache yt-dlp=2023.09.24-r0 bash=5.2.15-r6 curl=8.3.0-r1 \
 && adduser -h /home/appuser -s /bin/bash -D -u 1000 appuser

USER appuser
WORKDIR /home/appuser
ENTRYPOINT ["/bin/bash"]
