# Setup Pop!_OS

## Setup OS with usb key

[Setup OS with usb key](https://pop.system76.com/docs/install-pop-os/)

## Software

- Firefox, connect with Firhistorefox Sync
- Visual Studio Code with extensions :
  - comment synchroniser la config ?
- tilix ? : `sudo apt-get install tilix` 
- Typora ?

## Firefox Sync

* Sign in to Firefox Sync using 1password (on another device)
* Login to 1password via Firefox
* Manque flash : `sudo apt install flashplugin-installer`

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

## Config git

```bash
git config --global user.name "tentacode"
git config --global user.email "contact@gabrielpillet.com"
```

