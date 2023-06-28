# source: https://apptainer.org/docs/admin/main/installation.html
# date created: 2023 June 06
# date last modified: 2023 June 07
sudo apt-get update
sudo apt-get install -y software-properties-common
sudo add-apt-repository -y ppa:apptainer/ppa
sudo apt-get update
sudo apt-get install -y apptainer

# The if chunk below is meant to run if it's in a 
# docker container.
# It runs if it's in Codespace or GitPod,
# of if it's in a Docker container and the `/.dockerenv`
# file exists and has genuinely been created by Docker.
# Not straightforward: https://stackoverflow.com/questions/23513045/how-to-check-if-a-process-is-running-inside-docker-container
if [ -f /.dockerenv ] | [ -n "$(env | grep -E "^GITPOD|^CODESPACE")" ]; then
  # as singularity mounts localtime
  # source: https://carpentries-incubator.github.io/singularity-introduction/07-singularity-images-building/index.html#using-singularity-run-from-within-the-docker-container
  sudo apt-get install -y tzdata
  sudo cp /usr/share/zoneinfo/Europe/London /etc/localtime
  # mount the workspace directory if it's not already mounted
  grep -q "bind path = /workspace" /etc/apptainer/apptainer.conf || \
    sudo sed -i "s|bind path = /etc/hosts|bind path = /etc/hosts\nbind path = /workspace|" /etc/apptainer/apptainer.conf
fi