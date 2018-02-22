# Packer - CentOS 7 Vagrant Box using Ansible provisioner

## Author

Created in 2018 by [Maximilian Sparenberg](https://github.com/mspbgx).

**Current CentOS Version:** 7.4 (1708)

**Start Vagrant Box:**

  - [`vagrant init mspbgx/centos7-minimal`](https://vagrantcloud.com/mspbgx/boxes/centos7-minimal)
  - [`vagrant init mspbgx/centos7-gnome`](https://vagrantcloud.com/mspbgx/boxes/centos7-gnome)


This configuration install/configure CentOS 7 using Ansible.
You can create Vagrant box files for:


  - VirtualBox
  - VMware


## Requirements
The following software musst be installed on your build machine:

  - [Packer](https://www.packer.io/)
  - [Vagrant](https://vagrantup.com/)
  - [VirtualBox](https://www.virtualbox.org/) (if you want to build a VirtualBox box)
  - [VMware Workstation]() (if you want to build a VMware box)
    - [Workstation](https://www.vmware.com/products/workstation/) (for Windows/Linux)
    - [Fusion](https://www.vmware.com/products/fusion/) (for MacOS)
  - [Ansible](https://docs.ansible.com/intro_installation.html)

## Usage

Check out the Github repository and change into the directory.

### Build a CentOS-minimal box
**Build a CentOS-minimal box for VirtualBox and VMware**

    $ packer build centos7-minimal.json

**Build a CentOS-minimal box for VMware**

    $ packer build --only=vmware-iso centos7-minimal.json

**Build a CentOS-minimal box for VirtualBox**

    $ packer build --only=virtualbox-iso centos7-minimal.json

### Build a CentOS-GNOME box    
**Build a CentOS-GNOME box for VirtualBox and VMware**

    $ packer build centos7-gnome.json

**Build a CentOS-GNOME box for VMware**

    $ packer build --only=vmware-iso centos7-gnome.json

**Build a CentOS-GNOME box for VirtualBox**

    $ packer build --only=virtualbox-iso centos7-gnome.json


The build process need a few minutes, please wait along.
After this the box(es) are successfully created.


## Usage the Vagrant box

Type the following command to use the box:

The following provider can be used:
- virtualbox
- vmware_workstation
- vmware_fusion

**CentOS7-Minimal:**

    $ vagrant up centos7-minimal --provider=<provider>
**CentOS7-GNOME:**

    $ vagrant up centos7-gnome --provider=<provider>
