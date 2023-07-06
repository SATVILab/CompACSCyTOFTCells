#!/bin/bash
comp_dir=$(ls .. | grep -e "^Comp")
test -e ../"$comp_dir"/sif/r430.sif || ../"$comp_dir"/scripts/ubuntu/download_apptainer.sh
R_LIBS_USER=$HOME/.local/.cache/R
mkdir -p $R_LIBS_USER
apptainer run --env R_LIBS=$R_LIBS_USER,RENV_CONFIG_PAK_ENABLED=TRUE,GITHUB_PAT=${GITHUB_PAT:=$GH_TOKEN} ../"$comp_dir"/sif/r430.sif ${1:-code-insiders tunnel --accept-server-license-terms}
