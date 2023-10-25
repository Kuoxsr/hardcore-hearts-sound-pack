#!/usr/bin/env bash

# This file only runs in a terminal on Linux
# On Windows, you'll have to pack the files manually
# Make sure that pack.meta and "assets" are in the ROOT of your archive

clear
echo
read -p "Version suffix?  (e.g., 'v1.0): " version

echo -e "\nPacking version $version \n"

# In order to prevent the inclusion of every folder from the root
# to my desired directory, I need to change directory (cd) first:
(cd files && zip -r ../releases/hhst-sounds-$version.zip .)
