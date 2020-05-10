# Blacksmithery

## Requirements

- Firefox is already installed
- Install 1password X extension

## Ansible setup

```bash
sudo apt update
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible
```

## Provisioning ansible

```bash
sudo apt install git
mkdir ~/Workspace
cd ~/Workspace
git clone https://github.com/tentacode/blacksmithery.git
cd blacksmithery
```

Edit `config_vars.yml` file accordingly.

```ssh
make pop
```

Resetting this repository's origin to be able to push

```bash
git remote set-url origin git@github.com:tentacode/blacksmithery.git
```
