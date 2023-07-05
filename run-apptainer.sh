#!/bin/bash
test -e ../Comp*/sif/r430.sif || ../Comp*/scripts/ubuntu/download_apptainer.sh
R_LIBS_USER=$HOME/.local/.cache/R
mkdir -p $R_LIBS_USER
apptainer run --env R_LIBS=$R_LIBS_USER,RENV_CONFIG_PAK_ENABLED=TRUE,GITHUB_PAT=${GITHUB_PAT:=$GH_TOKEN} ../Comp*/sif/r430.sif ${1:-code-insiders tunnel --accept-server-license-terms}
