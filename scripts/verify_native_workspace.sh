#!/usr/bin/env bash
set -euo pipefail

workspace=${1:-}
if [[ -z "$workspace" ]]; then
  printf 'Usage: %s <native-workspace>\n' "$0" >&2
  exit 2
fi

case "$workspace" in
  /mnt/*) printf 'Refusing mounted Windows path: %s\n' "$workspace" >&2; exit 1 ;;
esac

[[ -d "$workspace" ]] || { printf 'Missing workspace: %s\n' "$workspace" >&2; exit 1; }
fs_type=$(stat -f -c %T "$workspace")
[[ "$fs_type" != "drvfs" ]] || { printf 'Refusing drvfs workspace: %s\n' "$workspace" >&2; exit 1; }

printf 'Native workspace verified: %s (%s)\n' "$workspace" "$fs_type"
