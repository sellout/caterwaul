#!/bin/bash
set -euo pipefail
IFS=$'\n\t'
DHALL=/Users/greg/Documents/community/dhall-haskell/.stack-work/install/x86_64-osx/lts-11.22/8.2.2/bin/dhall
for f in $(./scripts/find-dhall-files.sh -type f)
do
  # Echo the filename
  echo $f;
  # Compile the Dhall file
  $DHALL <<< $f >>/dev/null
done
