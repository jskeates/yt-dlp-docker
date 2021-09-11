# FROM alpine:edge
FROM alpine@sha256:0119f88f395766eb52f9b817c3d23576bf31935dc8e94abe14bae9a083ce4639

RUN apk add --no-cache bash=5.1.8-r0 youtube-dl=2021.06.06-r0 ffmpeg=4.4-r4 \
 && adduser -h /home/appuser -s /bin/bash -D -u 1000 appuser

USER appuser
WORKDIR /home/appuser
ENTRYPOINT ["/bin/bash"]
