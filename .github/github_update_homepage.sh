#!/usr/bin/env bash

set -euET -o pipefail

user="$GITHUB_REPOSITORY_OWNER"
repo="${GITHUB_REPOSITORY#*/}"

printf %s\\n "user=$user repo=$repo"

echo "Hashing repository contents with IPFS..."

h="$(result/www/ipfs-add.sh --pin=true)"

printf "The new homepage URL will be: https://%s.ipfs.dweb.link/\n" "$h"

# Update Homepage URL on GitHub
curl -L \
  -X PATCH \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $API_TOKEN_FOR_UPDATE_HOMEPAGE"\
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/"$user"/"$repo" \
  -d '{"name":"'"$repo"'", "homepage":"https://dweb.link/ipfs/'"$h"'"}' > /dev/null
