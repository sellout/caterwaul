#!/bin/bash
set -euo pipefail
IFS=$'\n\t'
DHALL=dhall
for f in $(./scripts/find-dhall-files.sh -type f)
do
  # Echo the filename
  echo $f;
  # Compile the Dhall file
  TMPFILE=$(mktemp --tmpdir dhall-bhat.XXXXXXXXXX)
  $DHALL <<< $f >/dev/null 2>$TMPFILE || (cat $TMPFILE && exit 1)
  rm $TMPFILE
done
