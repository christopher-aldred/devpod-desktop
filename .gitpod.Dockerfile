FROM ghcr.io/linuxserver/baseimage-kasmvnc:alpine318

USER root

RUN addgroup --gid 33333 gitpod && adduser -h /home/gitpod -u 33333 -G gitpod -D gitpod
RUN apk add openssh exa bash git
RUN apk add --no-cache git
RUN apk add --no-cache firefox

mkdir -p root/defaults
echo "firefox" > root/defaults/autostart
