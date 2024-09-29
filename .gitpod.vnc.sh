#!/usr/bin/env bash

mkdir ~/docker/webtop/config -p

docker run --quiet -d --name webtop -e TZ=America/New_York -e PUID=1000 -e PGID=1000 -v /home/$USER/docker/webtop/config:/config --restart=unless-stopped --network=host linuxserver/webtop:fedora-xfce

sleep 5

docker exec webtop chromium-browser https://localhost:3000 --no-sandbox -test-type --start-maximized