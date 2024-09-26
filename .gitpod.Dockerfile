FROM gitpod/workspace-full-vnc:latest

RUN alias openVNC="xdg-open https://6080-$(hostname).ws-eu116.gitpod.io"
