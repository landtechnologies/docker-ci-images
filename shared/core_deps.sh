#!/usr/bin/env sh

set -e

# build dependencies
apk add --no-cache --virtual=dependencies \
  libressl-dev \
  libc-dev \
  libffi-dev \
  gcc \
  g++ \
  python3-dev \
  rust \
  cargo

# packages
apk add --no-cache \
  bash \
  ca-certificates \
  coreutils \
  curl \
  docker \
  docker-compose \
  git \
  grep \
  jq \
  libressl \
  lsof \
  make \
  ncurses \
  netcat-openbsd \
  openssh-client \
  py3-pip \
  python3 \
  rsync \
  tar \
  util-linux \
  wget \
  yq \
  zip 

# pip
pip3 install --upgrade --no-cache-dir \
  pip \
  pipenv

# aws cli
pip3 install --upgrade --no-cache-dir \
  awscli
mkdir -p /root/.aws/cli
curl --fail -s -o /root/.aws/cli/alias https://raw.githubusercontent.com/landtechnologies/aws-toolbox/master/assets/aws-alias

# Misc tooling 
pip3 install --upgrade --no-cache-dir \
  credstash 

# bats-core
git clone https://github.com/bats-core/bats-core.git
cd bats-core
./install.sh /usr/local
cd ../
rm -Rf bats-core

# clean up
rm -rf /tmp/* /var/cache/apk/*
