#!/bin/bash
FETCH_R_VERSION=430
GITHUB_OAUTH_TOKEN=$GH_TOKEN
mkdir -p ../Comp*/sif 
../Comp*/bin/fetch --repo="https://github.com/SATVILab/Comp23RodoSTA2005S" --tag="r${FETCH_R_VERSION}" --release-asset="r${FETCH_R_VERSION}.sif" --github-oauth-token="$GITHUB_OAUTH_TOKEN" ../Comp*/sif
