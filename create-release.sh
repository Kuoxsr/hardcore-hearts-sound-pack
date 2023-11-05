#!/usr/bin/env bash

# This file only runs in a terminal on Linux
# On Windows, you'll have to pack the files manually
# Make sure that pack.meta and "assets" are in the ROOT of your archive

clear
echo
read -p "Version suffix?  (e.g., 'v1.0): " version

# Create date folder
date_stamp=$(date +%Y.%m.%d)-$version
mkdir -p "releases/${date_stamp}"

echo -e "\nPacking version $version into folder $date_stamp: \n"

# In order to prevent the inclusion of every folder from the root
# to my desired directory, I need to change directory (cd) first:
filename=hhst-sounds-$version.zip
(cd files && zip -r ../releases/${date_stamp}/$filename .)

# Create a cryptographic hash checksum of our file
(cd releases/${date_stamp} && sha256sum $filename > $filename.sha256)
