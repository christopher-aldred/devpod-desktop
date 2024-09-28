FROM gitpod/workspace-full:latest

USER root

RUN wget https://github.com/kasmtech/KasmVNC/releases/download/v1.3.2/kasmvncserver_bookworm_1.3.2_amd64.deb

RUN apt-get install ./kasmvncserver_*.deb

RUN addgroup $USER ssl-cert

RUN vncserver

RUN tail -f ~/.vnc/*.log
