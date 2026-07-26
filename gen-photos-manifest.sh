#!/usr/bin/env bash
# Regenerate manifest.json for a photo folder.
# Usage: bash gen-photos-manifest.sh [photos|thanks|<dir>]   (default: photos)
# Run after adding images:  bash gen-photos-manifest.sh photos
sub="${1:-photos}"
cd "$(dirname "$0")/assets/$sub" 2>/dev/null || { echo "no assets/$sub dir"; exit 1; }
{
  echo '{'
  echo '  "photos": ['
  first=1
  for f in $(ls -1 | grep -iE '\.(jpg|jpeg|png|webp|gif)$' | grep -v manifest.json | sort); do
    if [ $first -eq 1 ]; then first=0; else echo ','; fi
    printf '    "%s"' "$f"
  done
  echo ''
  echo '  ]'
  echo '}'
} > manifest.json
n=$(grep -c '"' manifest.json)
echo "assets/$sub/manifest.json updated ($(( (n) / 1 )) lines)"
