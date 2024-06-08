# Bash Aliases

This repository provides a set of useful bash aliases and functions to streamline your workflow, particularly for git, system management, and common tasks in PHP and Laravel development.

## Installation

Follow these steps to install the aliases and functions:

1. Clone this repository to your local machine:
    ```bash
    git clone https://github.com/yourusername/your-repo-name.git
    cd your-repo-name
    ```

2. Run the installation script:
    ```bash
    ./install.sh
    ```

3. Restart your terminal or source the updated configuration file to apply the changes immediately:
    ```bash
    source ~/.bashrc
    # or
    source ~/.zshrc
    # or
    source ~/.bash_profile
    ```

## Aliases

Below is a table of the aliases that will be generated, categorized by context.

| Context  | Alias Usage                         | Alias Command                                                        |
|----------|-------------------------------------|----------------------------------------------------------------------|
| Git      | `git-reset-develop-from` master     | **bash ~/.bash_aliases.sh git_reset_branch_from_base "$1" develop**  |
| Git      | `git-reset-homolog-from` main       | **bash ~/.bash_aliases.sh git_reset_branch_from_base "$1" homolog**  |
| Git      | `git-reset-dev-branches-from` main  | **git-reset-develop-from "$1" && git-reset-homolog-from "$1"**       |
| Git      | `git-pull`                          | **git fetch && git pull**                                            |
| Git      | `git-cp-branch-name`                | **git branch --show-current \| xclip -selection clipboard**          |
| Git      | `git-clear-local-branches`          | **bash ~/.bash_aliases.sh git_clear_local_branches**                 |
| System   | `cd-bash-aliases`                   | **cd /var/www/bash-aliases**                                         |
| System   | `cd-myapp`                          | **cd /var/www/myapp**                                                |
| System   | `cd-go`                             | **cd $HOME/go**                                                      |
| System   | `system-swap-clear`                 | **sudo swapoff -a; sudo swapon -a**                                  |
| System   | `system-upgrade`                    | **sudo apt update && apt list --upgradable && sudo apt upgrade**     |
| System   | `system-clear`                      | **sudo apt clean && sudo apt autoclean && sudo apt autoremove**      |
| PHP      | `phpstan`                           | **./vendor/bin/phpstan**                                             |
| PHP      | `phpunit`                           | **./vendor/bin/phpunit**                                             |
| Laravel  | `sail` up -d                        | **./vendor/bin/sail sail up -d**                                     |
| Laravel  | `sail-rebuild`                      | **sail down && sail build && sail up -d**                            |
| Laravel  | `pa` migrate --force                | **php artisan**                                                      |
| Laravel  | `laravel-version`                   | **php artisan --version**                                            |
| Docker   | `acw` <container_name> sh           | **docker exec -it -u www-data:www-data**                             |
| Docker   | `acn` <container_name> sh           | **docker exec -it -u node:node**                                     |
| Docker   | `acr` <container_name> sh           | **docker exec -it -u root:root**                                     |
| SSH      | `ssh-bash-aliases-sandbox`          | **ssh 71.15.15.21**                                                  |
| SSH      | `ssh-bash-aliases-staging`          | **ssh 71.15.15.25**                                                  |
| SSH      | `ssh-bash-aliases-production`       | **ssh 71.15.15.32**                                                  |
| SSH      | `ssh-app-sandbox`                   | **ssh 71.15.15.23**                                                  |
| SSH      | `ssh-app-api-staging`               | **ssh 71.15.15.26**                                                  |
| SSH      | `ssh-app-api-production`            | **ssh 71.15.15.30**                                                  |


## Notes

- Ensure you have `xclip` installed for the `git-cp-branch-name` alias to work.
- Modify the IP addresses in the SSH aliases as needed for your environment.

## Suggestions

Also consider using:
- [ZSH](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)
- [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh)
- [Oh My Zsh  - Plugins](https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins)

> In Linux environments, see instructions for [installation here](https://github.com/jrfernandodasilva/debian-12?tab=readme-ov-file#13-zsh-and-oh-my-zsh)


Happy coding!