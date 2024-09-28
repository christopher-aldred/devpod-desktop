FROM ghcr.io/linuxserver/baseimage-kasmvnc:alpine318
RUN apk add --no-cache firefox &&\
  mkdir -p root/defaults &&\
  echo "firefox" > root/defaults/autostart
