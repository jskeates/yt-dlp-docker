# FROM alpine:edge
FROM alpine@sha256:9a341ff2287c54b86425cbee0141114d811ae69d88a36019087be6d896cef241

RUN apk upgrade --no-cache \
 && apk add --no-cache yt-dlp=2026.06.09-r0 bash=5.3.9-r1 curl=8.21.0-r0 \
 && adduser -h /home/appuser -s /bin/bash -D -u 1000 appuser

USER appuser
WORKDIR /home/appuser
ENTRYPOINT ["/bin/bash"]
