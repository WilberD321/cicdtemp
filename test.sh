#!/bin/bash
set -euo pipefail

FILE="home.html"
BRAND="xyz"

if [ ! -f "$FILE" ]; then
  echo "FAIL: $FILE not found"
  exit 1
fi

if grep -qi "$BRAND" "$FILE"; then
  echo "PASS: '$BRAND' found in $FILE"
  exit 0
else
  echo "FAIL: '$BRAND' not found in $FILE"
  exit 1
fi
