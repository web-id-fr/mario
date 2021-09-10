![M.A.R.I.O.](./resources/img/mario.png)

[![M.A.R.I.O. CI](https://github.com/web-id-fr/mario/actions/workflows/mario-ci.yml/badge.svg)](https://github.com/web-id-fr/mario/actions/workflows/mario-ci.yml)

# It's a me! M.A.R.I.O.! 

MacOS
Ansible
Recipes:
Indepotent &
Omnipotent

It will pre-install a dev environment with all the big and small tools we use at [Web^ID](https://web-id.fr).

## What do I need to start?

A freshly installed (or not) macOS computer. Nothing else.

## Getting started

First, you would need git, make sure it is installed by opening your terminal (cmd + space, then type "terminal" and hit enter) and typing `git --version`. If you see a popup that says you need command line tools to use git, click on the "Install" button.

![Popup asking to install command line tools](./resources/img/command_line_tools_prompt_install.png)

After you clone this repository, you need to `make config`:

```bash
# a good idea would be to create a folder for you code first
mkdir ~/Workspace
cd ~/Workspace

git clone https://github.com/web-id-fr/mario.git
cd mario
make config
```

This will copy the `config_vars.yml.dist` to `config_vars.yml` and the `mario-playbook.yml.dist` to `mario-playbook.yml`. You should edit those accordingly, see [Configuration](#configuration).

Then you just have to:

```
make install
```

During `make install` you will be asked for your password and then to press the return key to install homebrew.

### 🧙‍♀️ But what kind of magic is this?

Calling `make install` will:

* ✅ Install [homebrew](https://brew.sh/) if needed, *see [bin/install-brew.sh](bin/install-brew.sh)*
* ✅ Install [ansible](https://docs.ansible.com/) if needed, *see [bin/install-ansible.sh](bin/install-ansible.sh)*
* 🚀 Run the [mario-playbook.yml](mario-playbook.yml.dist) ansible playbook.

*Tip: if you only need to run the playbook, you can just `make mario`.*

## Configuration

### mario-playbook.yml

The [mario-playbook.yml](mario-playbook.yml.dist) is a regular ansible playbook file and contains all the roles that you want to run. Just comment the roles you don't want.

### mario-configuration.yml

The [mario-configuration.yml](mario-configuration.yml.dist) file contains variables you need to set for specific roles, see bellow:

#### git

If you are using the `git` role, you must set these three configuration variable:

```yml
git_name: tentacode
git_email: tentacode@example.com
```

They will be used to set your user in git config 

#### github

If you are using the `gtihub` role, you should set this configuration variable:

```yml
github_access_name: "Web^ID macbook" # In case you use more computer with one account, each name must be different
github_access_token: ABCDEF1234567 # To create a github access token : https://github.com/settings/tokens
```

This will push a ssh key to be authenticated in github.

#### php older versions

If you are using the `php` role, you can install older versions in addition to the latest stable version:

```yml
php_older_versions:
 - php@7.4
 - php@7.3
 ```

## What's in it for me ?

Check the [mario-playbook.yml.dist](mario-playbook.yml.dist), each role is documented there and it should give you a good overview of what's in there. But wait! There's more:

### oh-my-zsh aliases

Use the `alias` command to see all of oh-my-zsh aliases.

### Git aliases

* st : a simpler display of git status
* amend : `git commit --amend --no-edit`
* rebase-main : `git pull --rebase origin main`
* pushu : push a new branch to origin and tracks it
* mvi : rename a file with case sensivity (ex: `git mv abc ABC`, does not work by default with git)
* previous : go back by one commit (useful for workshops)
* next : go to the next commit (useful for workshops)
* date : got to a date "YYYY-MM-DD" in current branch history
* yolo : `git add . && git amend && git push -f`
