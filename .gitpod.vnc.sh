#!/usr/bin/env bash

mkdir ~/docker/webtop/config -p

docker run --quiet -d --name webtop -e TZ=America/New_York -e PUID=1000 -e PGID=1000 -v /home/$USER/docker/webtop/config:/config --restart=unless-stopped --network=host linuxserver/webtop:fedora-kde