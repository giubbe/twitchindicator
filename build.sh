#!/usr/bin/env bash
set -euo pipefail

repo_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
cd "$repo_dir/package"

version="$(python3 -c 'import json; print(json.load(open("metadata.json", encoding="utf-8"))["KPlugin"]["Version"])')"
if [[ ! "$version" =~ ^[A-Za-z0-9][A-Za-z0-9._+-]*$ ]]; then
    printf 'Invalid version in package/metadata.json\n' >&2
    exit 1
fi

archive="$repo_dir/twitchindicator-$version.plasmoid"
rm -f -- "$archive"
zip -r "$archive" contents metadata.json
printf 'Created %s\n' "$archive"
