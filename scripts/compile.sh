#!/bin/bash
set -euo pipefail
IFS=$'\n\t'
DHALL=/Users/greg/Documents/community/dhall-haskell/dhall/dist/build/Dhall/dhall

for f in $(./scripts/find-dhall-files.sh -type f)
do
  # Echo the filename
  echo $f;
  # Compile the Dhall file
  $DHALL <<< $f >>/dev/null
done
