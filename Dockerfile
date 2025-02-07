# FROM alpine:edge
FROM alpine@sha256:115729ec5cb049ba6359c3ab005ac742012d92bbaa5b8bc1a878f1e8f62c0cb8

RUN apk add --no-cache yt-dlp=2025.01.26-r0 bash=5.2.37-r0 curl=8.12.0-r0 \
 && adduser -h /home/appuser -s /bin/bash -D -u 1000 appuser

USER appuser
WORKDIR /home/appuser
ENTRYPOINT ["/bin/bash"]
