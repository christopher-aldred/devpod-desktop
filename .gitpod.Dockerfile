FROM ghcr.io/linuxserver/baseimage-kasmvnc:alpine320

USER root

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git

RUN apk add --no-cache firefox && \
  mkdir -p root/defaults && \
  echo "firefox" > root/defaults/autostart
