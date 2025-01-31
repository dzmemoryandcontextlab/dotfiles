#!/usr/bin/env bash

if [ -f ~/.bashrc ]; then
source ~/.bashrc
fi

# FSL Setup
FSLDIR=/Users/halledz/fsl
PATH=${FSLDIR}/share/fsl/bin:${PATH}
export FSLDIR PATH
. ${FSLDIR}/etc/fslconf/fsl.sh
