#!|usr/bin/env bash
# github token
if [ -n "$GH_TOKEN" ]; then 
  export GITHUB_PAT="${GITHUB_PAT:-"$GH_TOKEN"}"
  export GITHUB_TOKEN="${GITHUB_PAT:-"$GH_TOKEN"}"
fi

# save all R packages to workspace if on GitPod
if [ -n "$(env | grep -E "^GITPOD")" ]; then
    R_LIBS=${R_LIBS:=/"/workspace/.local/lib/R"}
    RENV_PATHS_CACHE=${RENV_PATHS_CACHE:=/workspace/.local/R/lib/renv}
    RENV_PATHS_LIBRARY_ROOT=${RENV_PATHS_LIBRARY_ROOT:=/workspace/.local/.cache/R/renv}
    RENV_PATHS_LIBRARY=${RENV_PATHS_LIBRARY:=/workspace/.local/.cache/R/renv}
    RENV_PREFIX_AUTO=${RENV_PREFIX_AUTO:=TRUE}
    RENV_CONFIG_PAK_ENABLED=${RENV_CONFIG_PAK_ENABLED:=TRUE}
fi

# ensure that radian works (at least on ephemeral dev
# environments)
if [ -n "$(env | grep -E "^GITPOD|^CODESPACE")" ]; then
  if ! [ -e "$HOME/.radian_profile" ]; then touch "$HOME/.radian_profile"; fi
  if [ -z "$(cat "$HOME/.radian_profile" | grep -E 'options\(\s*radian\.editing_mode')" ]; then 
    echo 'options(radian.editing_mode = "vi")' >> "$HOME/.radian_profile"
  fi
fi

# ensure R_LIBS is set and created (so
# that one never tries to install packages
# into a singularity/apptainer container)
R_LIBS=${R_LIBS:="$HOME/.local/lib/R"}
mkdir -p "$R_LIBS"
