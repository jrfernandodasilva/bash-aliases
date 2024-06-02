#!/bin/bash

###########################################################################
# Function to reset a target branch from a base branch
#
# **Arguments:**
#
# * `base_branch`: The name of the branch to use as the base for the reset.
# * `target_branch`: The name of the branch to be reset
#
# **Usage:**
# git_reset_branch_from_base base_branch target_branch
#
# **Example:**
# git_reset_branch_from_base master develop
###########################################################################
git_reset_branch_from_base() {
  local base_branch="$1"
  local target_branch="$2"

  # Checkout and update base branch
  git checkout "$base_branch" && git fetch && git pull && \

  # Delete target branch local and in origin
  git branch -D "$target_branch" && git push -d origin "$target_branch" && \

  # Recreate target branch from base branch
  git checkout -b "$target_branch" && git push --set-upstream origin "$target_branch" && \

  # Print feedback message
  echo "Branch '$target_branch' reseted from '$base_branch'"
}


########################################################
# Function to clear local branches except specific ones
#
# **Usage:**
# git_clear_local_branches
#
# **Example:**
# git_clear_local_branches (y)
########################################################
git_clear_local_branches() {
  read -p "Are you sure you want to delete local branches (except develop, master, main, and homolog)? (y/N) " -r confirm
  if [[ $confirm =~ ^[Yy]$ ]]; then
    git branch | grep -v "develop" | grep -v "master" | grep -v "main" | grep -v "homolog" | xargs git branch -D
  fi
}


testA() {
  echo 'test A - ok'
}

#################################################################
# Verify that the command exists and is a function to execute it
#################################################################
# Check if the function exists (bash specific)
if declare -f "$1" > /dev/null
then
  # call arguments verbatim
  "$@"
else
  # Show a helpful error
  echo "'$1' is not a known function name" >&2
  exit 1
fi
