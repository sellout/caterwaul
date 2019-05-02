find . \
     -not -path '*/\.*' \
     -not -path '*/docs/*' \
     -not -path '*/scripts/*' \
     -not -iname "*.md" \
     -not -iname "*.nix" \
     -not -iname "Makefile" \
     -not -iname "LICENSE" \
     "$@"
