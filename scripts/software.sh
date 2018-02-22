#!/bin/bash -eux

# Install epel-release.
yum -y install epel-release

# Install python2-pip.
yum -y install python2-pip

# Install ansible.
pip install ansible
