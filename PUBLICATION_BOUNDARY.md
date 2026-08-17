# Publication Boundary

This repository publishes reusable design and implementation patterns. It does not publish a deployable representation of a live workstation, WSL distribution, Proxmox host, router, service, or Bitwarden organization.

| Public-safe content | Never publish here |
|---|---|
| Placeholder-based configuration, workflow documentation, policy gates, and non-secret contracts | Token values, secret values, private keys, credential-bearing URLs, `.env` files, browser state, or credential stores |
| Generic tooling, catalog, and validation scripts | Private addresses, hostnames, guest IDs, storage layouts, media paths, user names, or personal filesystem paths |
| Read-first and confirmation-gated automation patterns | Private Git history, deployment logs, backups, photos, music, or database contents |

The publication process starts a new Git history from this sanitized tree. The `scripts/validate_public_repo.sh` gate scans for common sensitive-data patterns, but it is a defense-in-depth control rather than a substitute for review.
