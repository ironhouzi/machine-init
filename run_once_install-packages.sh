{{ if eq .chezmoi.osRelease.name "Fedora Linux" -}}
#!/bin/sh

sudo dnf install --assumeyes copr-cli

sudo mkdir -p /etc/keyd && cat <<EOT >> /etc/keyd/default.conf
[ids]

*

[main]

# Maps capslock to escape when pressed and control when held.
capslock = overload(control, esc)

# Remaps the escape key to capslock
esc = capslock
EOT
{{ end -}}
