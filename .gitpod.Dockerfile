FROM ghcr.io/linuxserver/baseimage-kasmvnc:alpine320

USER root

RUN apk add --no-cache git && \
    apk add --no-cache firefox && \
    mkdir -p root/defaults && \
    echo "firefox" > root/defaults/autostart
