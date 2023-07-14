#!/usr/bin/env bash

# This script sets up the development environment by sourcing bashrc.d files,
# adding config_r.sh to be sourced if it's not already present, installing
# dependencies if running in Gitpod, and cloning repositories.

# Use descriptive variable names for scripts
scripts_dir="./scripts"
setup_bashrc_script="$scripts_dir/all/setup_bashrc_d.sh"
config_r_script="$scripts_dir/all/config_r.sh"
apptainer_script="$scripts_dir/ubuntu/install_apptainer.sh"
gh_script="$scripts_dir/ubuntu/install_gh.sh"
clone_repos_script="$scripts_dir/clone-repos.sh"

# Ensure that `.bashrc.d` files are sourced in
. setup_bashrc_script

# add config_r.sh to be sourced if 
# it's not already present
# Copy the config_r.sh file to $HOME/.bashrc.d/ if it's not already present
if [ ! -f "$HOME/.bashrc.d/config_r.sh" ]; then
  cp "$config_r_script" "$HOME/.bashrc.d/"
fi

if [ -n "$(env | grep -E "^GITPOD")" ]; then

  # Install Apptainer to run and download containers
  if ! . "$apptainer_script"; then
    echo "Failed to install Apptainer"
    exit 1
  fi
  # Install GitHub CLI to download containers
  if ! . "$gh_script"; then
    echo "Failed to install GitHub CLI"
    exit 1
  fi

fi

# Clone repositories
. "$clone_repos_script"
