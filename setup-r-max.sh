#!/usr/bin/env bash

sudo apt-get update && export DEBIAN_FRONTEND=noninteractive
sudo apt-get install -y \
        locales \
        libgit2-dev \
        libcurl4-openssl-dev \
        libssl-dev \
        libxml2-dev \
        libxt-dev \
        libfontconfig1-dev \
        libcairo2-dev \
        libudunits2-dev \
        libsodium-dev \
        libfreetype6-dev \
        libclang-dev \
        fonts-roboto \
        libglpk40 \
        libicu[0-9][0-9] \
        libicu-dev \
        libstdc++6 \
        zlib1g #\
        #librdf0-dev
        # libcurl4-gnutls-dev \
        # libraptor2-dev \
        # librasqal3-dev \
