# Setup Pop!\_OS

## Resources

- https://mensfeld.pl/2018/05/lenovo-thinkpad-x1-carbon-6th-gen-2018-ubuntu-18-04-tweaks/
- https://wiki.archlinux.org/index.php/Lenovo_ThinkPad_T490
- https://pcsupport.lenovo.com/fr/fr/products/laptops-and-netbooks/thinkpad-t-series-laptops/thinkpad-t490-type-20n2-20n3/downloads/driver-list/component?name=BIOS

## Setup OS with usb key

[Setup OS with usb key](https://pop.system76.com/docs/install-pop-os/)

## Requirements

- Firefox is already installed, connect with Firefox Sync.
- Connect to google accounts.

## Ansible setup

```bash
sudo apt update
sudo apt install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible
ansible -m ping
```

## Provisioning ansible

```bash
mkdir ~/Workspace
cd ~/Workspace
git clone https://github.com/tentacode/pop-os-setup.git
cd pop-os-setup
make pop
```
