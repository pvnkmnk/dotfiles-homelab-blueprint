#!/usr/bin/env bash
set -euo pipefail

root=${1:-$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)}
[[ -d "$root" ]] || { printf 'Missing root: %s\n' "$root" >&2; exit 2; }

patterns='-----BEGIN (RSA |EC |OPENSSH )?PRIVATE KEY-----|\bgh[pousr]_[A-Za-z0-9_]{20,}\b|\bsk-[A-Za-z0-9]{20,}\b|BWS_ACCESS_TOKEN[[:space:]]*=[[:space:]]*[^[:space:]]+|(api[_-]?key|access[_-]?token|client[_-]?secret|password)[[:space:]]*[:=][[:space:]]*[^[:space:]]{12,}|192\.168\.|\b10\.[0-9]{1,3}\.|\b172\.(1[6-9]|2[0-9]|3[0-1])\.|/home/[A-Za-z0-9._-]+'

if grep -RIniE --exclude='validate_public_repo.sh' --exclude-dir=.git -- "$patterns" "$root"; then
  printf 'Public-safety scan failed. Remove or replace the matched content before publication.\n' >&2
  exit 1
fi

printf 'Public-safety scan passed: no matching credential, private-network, or personal-path patterns.\n'
