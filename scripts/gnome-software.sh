#!/bin/bash -eux

# Install GNOME.
wget https://atom.io/download/rpm -O ~/atom.rpm
yum -y install ~/atom.rpm
