#!/usr/bin/env bash

sudo mkdir ~/docker/webtop/config -p

sudo echo "PASSWORD=Password_0" > ~/docker/webtop/.env

sudo chown "$USER":"$USER" /home/"$USER"/docker -R

sudo chmod g+rwx "$HOME/docker" -R

