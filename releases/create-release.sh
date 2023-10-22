#!/usr/bin/env bash

# This file only runs in a terminal on Linux
# On Windows, you'll have to pack the files manually
# Make sure that pack.meta and "assets" are in the ROOT of your archive

if [ $# -ne 1 ]; then
    echo "This script takes one argument: the version number"
    echo "Usage syntax: ./create-release.sh {version}"
    echo "Creates a file that begins with 'hhst-sounds-' and adds your suffix"
    exit 1
fi

# In order to prevent the inclusion of every folder from the root
# to my desired directory, I need to change directory (cd) first:
(cd ../files && zip -r ../releases/hhst-sounds-$1 .)
