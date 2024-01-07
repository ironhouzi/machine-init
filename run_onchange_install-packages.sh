#!/bin/sh

sudo dnf copr enable alternateved/keyd --assumeyes
sudo dnf install --assumeyes keyd

sudo systemctl enable keyd
sudo systemctl reload keyd
