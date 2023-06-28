#!/usr/bin/env bash

# This script sets up the R environment for the ProjectACSCyTOFTCells/CompACSCyTOFTCells project.
# It configures the Radian editing mode to 'vi' and disables auto-matching of parentheses.

echo "options(radian.editing_mode = 'vi')" > ~/.radian_profile \
  && echo "options(radian.auto_match = FALSE)" >> ~/.radian_profile
