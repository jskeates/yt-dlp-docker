# FROM alpine:edge
FROM alpine@sha256:93d5a28ff72d288d69b5997b8ba47396d2cbb62a72b5d87cd3351094b5d578a0

RUN apk add --no-cache bash=5.2.15-r0 youtube-dl=2021.12.17-r0 ffmpeg=5.1.2-r1 \
 && adduser -h /home/appuser -s /bin/bash -D -u 1000 appuser

USER appuser
WORKDIR /home/appuser
ENTRYPOINT ["/bin/bash"]
