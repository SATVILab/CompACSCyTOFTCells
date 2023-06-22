#!/bin/bash
# source: https://apptainer.org/docs/admin/main/installation.html
# date created: 2023 June 22
# date last modified: 2023 June 22
sudo apt update
sudo apt install -y software-properties-common
sudo add-apt-repository -y ppa:apptainer/ppa
sudo apt update
sudo apt install -y apptainer
sudo add-apt-repository -y ppa:apptainer/ppa
sudo apt update
sudo apt install -y apptainer-suid
