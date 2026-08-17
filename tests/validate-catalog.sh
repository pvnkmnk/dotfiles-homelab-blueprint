#!/usr/bin/env bash
set -euo pipefail

root=${1:-$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)}
catalog="$root/config/commands.tsv"

[[ -f "$catalog" ]] || { printf 'Missing catalog: %s\n' "$catalog" >&2; exit 1; }
awk -F '\t' 'NR == 1 { if ($1 != "id" || $2 != "label" || $3 != "classification") exit 1; next } NF != 4 || $1 == "" || $3 == "" { exit 1 } { if (seen[$1]++) exit 1 }' "$catalog" || { printf 'Invalid or duplicate command catalog entries.\n' >&2; exit 1; }
printf 'Catalog validation passed.\n'
