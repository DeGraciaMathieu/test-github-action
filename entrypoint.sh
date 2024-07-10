#!/bin/bash
set -e

apt-get update && apt-get install -y jq

files=$(jq -r '.pull_request.files | map(.filename) | join(" ")' "$GITHUB_EVENT_PATH")

php /index.php "$files"
