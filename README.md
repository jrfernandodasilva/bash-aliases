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

| Context  | Alias                          | Example                             |
|----------|--------------------------------|-------------------------------------|
| Git      | `git-reset-develop-from`       | `git-reset-develop-from master`     |
| Git      | `git-reset-homolog-from`       | `git-reset-homolog-from main`       |
| Git      | `git-reset-dev-branches-from`  | `git-reset-dev-branches-from main`  |
| Git      | `git-pull`                     | `git-pull`                          |
| Git      | `git-cp-branch-name`           | `git-cp-branch-name`                |
| Git      | `git-clear-local-branches`     | `git-clear-local-branches`          |
| System   | `cd-bash-aliases`              | `cd-bash-aliases`                   |
| System   | `cd-myapp`                     | `cd-myapp`                          |
| System   | `system-swap-clear`            | `system-swap-clear`                 |
| System   | `system-upgrade`               | `system-upgrade`                    |
| System   | `system-clear`                 | `system-clear`                      |
| PHP      | `phpstan`                      | `phpstan`                           |
| PHP      | `phpunit`                      | `phpunit`                           |
| Laravel  | `sail`                         | `sail`                              |
| Laravel  | `sail-rebuild`                 | `sail-rebuild`                      |
| Laravel  | `pa`                           | `pa`                                |
| Laravel  | `laravel-version`              | `laravel-version`                   |
| Docker   | `acw`                          | `acw <container_name> sh`           |
| Docker   | `acn`                          | `acn <container_name> sh`           |
| Docker   | `acr`                          | `acr <container_name> sh`           |
| SSH      | `ssh-bash-aliases-sandbox`     | `ssh-bash-aliases-sandbox`          |
| SSH      | `ssh-bash-aliases-staging`     | `ssh-bash-aliases-staging`          |
| SSH      | `ssh-bash-aliases-production`  | `ssh-bash-aliases-production`       |
| SSH      | `ssh-app-sandbox`              | `ssh-app-sandbox`                   |
| SSH      | `ssh-app-api-staging`          | `ssh-app-api-staging`               |
| SSH      | `ssh-app-api-production`       | `ssh-app-api-production`            |


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