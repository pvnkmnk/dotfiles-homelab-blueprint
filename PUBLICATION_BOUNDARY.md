# Publication Boundary

This repository publishes reusable design and implementation patterns. Its checked-in files are not a deployable representation of a live workstation, WSL distribution, Proxmox host, router, service, or secrets organization.

A cleaned-up working tree does not remove information from earlier commits. **This documentation update does not rewrite Git history**, and prior public commits may retain owner-specific hardware details or repository names. Do not describe the repository's history as sanitized unless it has been separately reviewed. Any history rewrite or removal request is a distinct, potentially disruptive operation and requires explicit owner approval.

| Public-safe content | Never publish here |
|---|---|
| Placeholder-based configuration, workflow documentation, policy gates, and non-secret contracts | Token values, secret values, private keys, credential-bearing URLs, `.env` files, browser state, or credential stores |
| Generic tooling, catalogs, validation scripts, and evidence-label templates | Owner-specific private addresses, hostnames, guest IDs, storage layouts, media paths, account names, or personal filesystem paths |
| Read-first and confirmation-gated automation patterns | Private repository data or history, deployment logs, backups, photos, music, or database contents |

## Publication review

`scripts/validate_public_repo.sh` is a pattern-based heuristic over the working-tree files it can read. It excludes `.git` and the scanner itself; it does not inspect commit history, prove that every sensitive value is covered by its patterns, or certify semantic/privacy safety. A pass means only that this scan found no listed patterns in the scanned files.

Before publishing changes, review the complete diff and current file tree, run the scanner, inspect generated artifacts, and separately assess public Git history and releases. Do not rewrite history merely as a routine cleanup; assess impact and obtain explicit approval first.
