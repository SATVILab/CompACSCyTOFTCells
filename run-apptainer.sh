#!/bin/bash
test -e sif/r430.sif || scripts/ubuntu/download_apptainer.sh
R_LIBS_USER=$HOME/.local/cache/R
mkdir -p $R_LIBS_USER
apptainer run --env R_LIBS=$R_LIBS_USER sif/r430.sif code-insiders tunnel --accept-server-license-terms
