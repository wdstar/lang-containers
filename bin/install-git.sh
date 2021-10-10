#!/bin/sh

if which git > /dev/null 2>&1; then
  echo 'git is already installed.'
else
  if which apt-get > /dev/null 2>&1; then
    echo 'Installing git by apt...'
    apt-get update
    apt-get -y install git
  fi
  if which yum > /dev/null 2>&1; then
    echo 'Installing git by yum...'
    yum -y install git
  fi
fi
