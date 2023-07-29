# FROM alpine:edge
FROM alpine@sha256:880fafbab5a7602db21ac37f0d17088a29a9a48f98d581f01ce17312c22ccbb5

RUN apk add --no-cache yt-dlp=2023.07.06-r0 bash=5.2.15-r5 \
 && adduser -h /home/appuser -s /bin/bash -D -u 1000 appuser

USER appuser
WORKDIR /home/appuser
ENTRYPOINT ["/bin/bash"]
