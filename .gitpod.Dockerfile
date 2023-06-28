#
# Ubuntu Dockerfile
#
# https://github.com/dockerfile/ubuntu
#

# Pull base image.
FROM gitpod/workspace-full:latest

COPY src/ubuntu /project/src

WORKDIR /project/src

RUN ./install_apptainer.sh
RUN ./install_gh.sh
