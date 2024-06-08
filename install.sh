#!/bin/bash

# User config file to import .bash_aliases 
FILES=(".zshrc" ".bash_profile" ".bashrc")


#########################################################################

# Check if .bash_aliases file exists, if not create it
ALIAS_FUNCTIONS="$HOME/.bash_aliases.sh"
if [ ! -f "$ALIAS_FUNCTIONS" ]; then
  cp .bash_aliases.sh "$ALIAS_FUNCTIONS"
  echo ".bash_aliases.sh copied to $ALIAS_FUNCTIONS"
fi


#########################################################################

# Check if .bash_aliases file exists, if not create it
ALIAS_FILE="$HOME/.bash_aliases"
if [ ! -f "$ALIAS_FILE" ]; then
  touch "$ALIAS_FILE"
fi

# Aliases to add
aliases=(
'# Git aliases'
'git-reset-develop-from() { bash ~/.bash_aliases.sh git_reset_branch_from_base "$1" develop; }'
'git-reset-homolog-from() { bash ~/.bash_aliases.sh git_reset_branch_from_base "$1" homolog; }'
'git-reset-dev-branches-from() { git-reset-develop-from "$1" && git-reset-homolog-from "$1"; }'
'alias git-pull="git fetch && git pull"'
'alias git-cp-branch-name="git branch --show-current | xclip -selection clipboard"'
'alias git-clear-local-branches="bash ~/.bash_aliases.sh git_clear_local_branches"'
'# System'
'alias cd-bash-aliases="cd /var/www/bash-aliases"'
'alias cd-myapp="cd /var/www/myapp"'
'alias cd-go="cd $HOME/go"'
'alias system-swap-clear="sudo swapoff -a; sudo swapon -a"'
'alias system-upgrade="sudo apt update && apt list --upgradable && sudo apt upgrade"'
'alias system-clear="sudo apt clean && sudo apt autoclean && sudo apt autoremove"'
'# PHP'
'alias phpstan="./vendor/bin/phpstan"'
'alias phpunit="./vendor/bin/phpunit"'
'# Laravel'
'alias phpstan="./vendor/bin/phpstan"'
'alias phpunit="./vendor/bin/phpunit"'
'alias sail="./vendor/bin/sail"'
'alias sail-rebuild="sail down && sail build && sail up -d"'
'alias pa="php artisan"'
'alias laravel-version="php artisan --version"'
'# Docker'
'alias acw="docker exec -it -u www-data:www-data"'  # Access Container with "www-data" user and group
'alias acn="docker exec -it -u node:node"'          # Access Container with "node" user and group
'alias acr="docker exec -it -u root:root"'          # Access Container with "root" user and group
'# SSH'
'alias ssh-bash-aliases-sandbox="ssh 71.15.15.21"'
'alias ssh-bash-aliases-staging="ssh 71.15.15.25"'
'alias ssh-bash-aliases-production="ssh 71.15.15.32"'
'alias ssh-app-sandbox="ssh 71.15.15.23"'
'alias ssh-app-api-staging="ssh 71.15.15.26"'
'alias ssh-app-api-production="ssh 71.15.15.30"'
)

# Insert aliases into .bash_aliases if not already present
for alias in "${aliases[@]}"; do
  if ! grep -Fxq "$alias" "$ALIAS_FILE"; then
    echo "$alias" >> "$ALIAS_FILE"
  fi
done

# Source the .bash_aliases file to apply changes immediately
if [ -f "$HOME/.bash_aliases" ]; then
  source "$HOME/.bash_aliases"
fi

echo "Functions and aliases have been added to '$HOME/.bash_aliases' and sourced."


##################################################################################

# Import .bash_aliases on user config file
for FILE in "${FILES[@]}"; do
  if [ -f "$HOME/$FILE" ]; then
    
    # Add source .bash_aliases to .bashrc if not already present
    if ! grep -Fq "source \$HOME/.bash_aliases" "$HOME/$FILE"; then
      echo 'if [ -e $HOME/.bash_aliases ]; then' >> "$HOME/$FILE"
      echo '    source $HOME/.bash_aliases' >> "$HOME/$FILE"
      echo 'fi' >> "$HOME/$FILE"
      echo "Added sourcing of .bash_aliases to $HOME/$FILE"

      source "$HOME/$FILE"
      break
    fi
  fi
done
