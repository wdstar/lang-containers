#!/bin/sh

echo 'Installing tools...'

BASE_DIR=`dirname $0`
SCRIPT_DIR=`cd $BASE_DIR; pwd`
# on Bash
#SCRIPT_DIR=$(cd $(dirname $0); pwd)
echo "SCRIPT_DIR: ${SCRIPT_DIR}"
echo "PWD: ${PWD}"

${SCRIPT_DIR}/install-git.sh

echo 'Installing tools done.'
