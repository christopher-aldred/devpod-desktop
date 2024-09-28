FROM gitpod/workspace-full:latest

USER root

RUN apt-get update \
    && apt-get install -yq xvfb x11vnc xterm \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/*

RUN wget https://github.com/kasmtech/KasmVNC/releases/download/v1.3.2/kasmvncserver_bookworm_1.3.2_amd64.deb

RUN apt-get install ./kasmvncserver_*.deb

RUN addgroup $USER ssl-cert

RUN vncserver

RUN tail -f ~/.vnc/*.log
