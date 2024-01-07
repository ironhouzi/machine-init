#!/bin/sh

sudo dnf install --assumeyes copr-cli

sudo mkdir -p /etc/keyd
sudo cp /home/r/.local/share/chezmoi/.system-files/keyd.conf /etc/keyd/default.conf
