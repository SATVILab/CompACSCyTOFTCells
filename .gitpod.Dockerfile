#
# Ubuntu Dockerfile
#
# https://github.com/dockerfile/ubuntu
#

# Pull base image.
FROM gitpod/workspace-full:latest

COPY src/docker/ubuntu /project/src

WORKDIR /project/src

RUN bash install_apptainer.sh
RUN bash install_gh.sh
