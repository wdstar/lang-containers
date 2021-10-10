#!/bin/sh

if git --version > /dev/null 2>&1; then
  echo 'git is already installed.'
else
  if apt-get -v > /dev/null 2>&1; then
    echo 'Installing git by apt...'
    apt-get update
    apt-get -y install git
    exit 0
  fi

  if yum --version > /dev/null 2>&1; then
    echo 'Installing git by yum...'
    yum -y install git
    exit 0
  fi
fi
