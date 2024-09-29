#!/usr/bin/env bash

mkdir ~/docker/webtop/config -p

docker run --quiet -d --name webtop -p 6080:6080 -e TZ=America/New_York -e PUID=1000 -e PGID=1000 -v /home/$USER/docker/webtop/config:/config --restart=unless-stopped --network=host linuxserver/webtop:arch-kde

docker exec webtop chromium-browser https://localhost:3000 --no-sandbox -test-type --fullscreen