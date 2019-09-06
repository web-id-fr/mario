# Setup Pop!_OS

## Setup OS with usb key

[Setup OS with usb key](https://pop.system76.com/docs/install-pop-os/)

## Required Software

- Firefox is already installed, connect with Firefox Sync.

## Ansible

```bash
sudo apt update
sudo apt install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible
ansible -m ping
```

```bash
mkdir ~/Workspace
cd ~/Workspace
git clone https://github.com/tentacode/pop-os-setup.git
cd pop-os-setup
make pop
```
