#!/bin/bash
FETCH_R_VERSION=423
GITHUB_OAUTH_TOKEN=$GH_TOKEN
mkdir -p sif 
./bin/fetch --repo="https://github.com/SATVILab/CompACSCyTOFTCells" --tag="r${FETCH_R_VERSION}" --release-asset="r${FETCH_R_VERSION}.sif" --github-oauth-token="$GITHUB_OAUTH_TOKEN" sif


