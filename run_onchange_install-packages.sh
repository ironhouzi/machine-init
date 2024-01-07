{{ if eq .chezmoi.osRelease.name "Fedora Linux" -}}
#!/bin/sh

sudo dnf copr enable alternateved/keyd --assumeyes

sudo dnf install --assumeyes \
	keyd # caps2esc

sudo systemctl enable keyd
sudo systemctl reload keyd
{{ end -}}
