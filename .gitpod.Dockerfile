FROM gitpod/workspace-full:latest

USER root

# Install Xvfb
RUN apt-get update \
    && apt-get install -yq xvfb x11vnc xterm \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/*

RUN wget https://github.com/kasmtech/KasmVNC/releases/download/v1.3.1/kasmvncserver_bionic_1.3.1_amd64.deb

RUN sudo apt-get install ./kasmvncserver_bionic_1.3.1_amd64.deb

RUN sudo addgroup $USER ssl-cert
