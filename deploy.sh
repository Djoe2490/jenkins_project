#!/bin/sh
set -eu

destination="${1:?Provide a deployment directory}"
mkdir -p "$destination"
cp app.py "$destination/app.py"
python3 "$destination/app.py" > "$destination/output.txt"
cat "$destination/output.txt"
grep -Fx 'Hello, World from Joe Dib!' "$destination/output.txt" > /dev/null
