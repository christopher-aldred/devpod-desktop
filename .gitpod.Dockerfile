FROM gitpod/workspace-full-vnc:latest

RUN echo "alias vnc='xdg-open https://6080-$(hostname).ws-eu116.gitpod.io'" >> ~/.bashrc
