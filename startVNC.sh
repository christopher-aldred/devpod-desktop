#!/usr/bin/env bash

docker run --quiet -d --name webtop --env-file /home/$USER/docker/webtop/.env -e TZ=America/New_York -e PUID=1000 -e PGID=1000 -v /home/$USER/docker/webtop/config:/config --restart=unless-stopped --network=host linuxserver/webtop:fedora-kde