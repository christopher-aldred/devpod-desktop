FROM ghcr.io/linuxserver/baseimage-kasmvnc:alpine318

USER root
RUN addgroup -g 33333 gitpod \
    && echo '%gitpod ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/gitpod \
    && adduser -u 33333 -G gitpod -h /home/gitpod -s /bin/bash -D gitpod \
    && mkdir /workspace && chown -hR gitpod:gitpod /workspace
# gitpod/vscode requirements
RUN apk add \
    iptables \
    gcompat \
    libstdc++ \
    libgcc

RUN apk add openssh exa bash git
RUN apk add --no-cache git
RUN apk add --no-cache firefox
RUN mkdir -p root/defaults
RUN echo "firefox" > root/defaults/autostart

USER gitpod
