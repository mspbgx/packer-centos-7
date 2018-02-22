#!/bin/bash -eux

# Install GNOME.
yum groupinstall "GNOME Desktop" "Graphical Administration Tools"
sudo systemctl set-default graphical.target
