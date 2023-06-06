#!/usr/bin/env bash
# use vim
echo "options(radian.editing_mode = 'vi')" > ~/.radian_profile \
  && echo "options(radian.auto_match = FALSE)" >> ~/.radian_profile #\
  #&& Rscript -e "renv::restore()"
