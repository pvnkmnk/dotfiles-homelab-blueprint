# Dotfiles and Homelab Blueprint

This repository is a **public reusable blueprint** for a Windows workstation, a native WSL development plane, and a small Proxmox homelab. It illustrates a narrow `dotctl` command surface, tool pinning and validation through `mise`, curated command catalogs, scoped machine-secret contracts, and approval-gated infrastructure changes. It is a template, not a copy of any live environment.

> The checked-in files contain generic patterns and placeholders. Keep completed local inventory private, keep secrets outside Git, label evidence and timestamps, and obtain explicit approval before changing infrastructure.

| Layer | Purpose | Public artifact | Local responsibility |
|---|---|---|---|
| Windows and WSL | Example creator workstation and native Linux workspace | `docs/wsl-workspace.md`, `scripts/verify_native_workspace.sh` | Choose the distribution and local workspace path |
| Tool control plane | Versioned tools and stable task entrypoints | `mise.toml`, `bin/dotctl` | Pin tools and verify downloads locally |
| Command palette | Curated discovery rather than arbitrary shell launch | `config/commands.tsv` | Wire a launcher to approved catalog IDs only |
| Proxmox | Read-first guest, storage, network, and backup planning | `ansible/`, `docs/proxmox-approval-gate.md` | Verify exact local state before proposing changes |
| Evidence | Distinguish observation, report, design, and unknowns | `docs/evidence-labels.md`, `docs/homelab-hardware-specs.md` | Record source, scope, and observation time in a private copy |
| Secrets | Project-scoped machine accounts and runtime injection patterns | `secrets/contracts/`, `docs/bitwarden-machine-accounts.md` | Create credentials locally; keep values out of files and logs |

## Relationship to operational sources of truth

This repository is a **sanitized reference template**, not an operator's configuration authority. Keep the actual inventory, private topology, secret contracts, and change approvals in the appropriate private operational system. Promote a pattern into that system only after review; publish it here only after a fresh redaction review. Never use this blueprint as a deployment target for a live host.

## Quick start

Clone the repository into a **native Linux filesystem** inside your WSL distribution. Begin from a Windows shell when launching WSL, then run the workspace verification script and review the commands that would be enabled. The examples deliberately stop before installing software, creating guests, or delivering secrets.

```text
Windows shell → native WSL workspace probe → mise task review → approved local bootstrap
```

The repository is structured for safe customization. `mise.toml` defines a small task surface; `bin/dotctl` routes only known actions; `config/commands.tsv` is the catalog source; and `secrets/contracts/` records names, scope, lifecycle, and recovery information without recording values.

## What is deliberately absent

The **current checked-in tree** is intended to omit owner-specific hostnames, private addresses, guest identifiers, storage allocations, account names, media paths, secret values, API tokens, browser profiles, private keys, credential stores, and personal filesystem paths. This documentation update does not rewrite Git history: earlier public commits may retain owner-specific hardware details or repository names. See [`PUBLICATION_BOUNDARY.md`](PUBLICATION_BOUNDARY.md) for the limits of this cleanup and the review required before publication.

The repository's scanner is a heuristic for a limited set of patterns in the working tree. A passing result is not proof of complete current-tree cleanliness, does not inspect Git history, and does not replace human review.

## Documentation map

| Document | Use it for |
|---|---|
| [`docs/architecture.md`](docs/architecture.md) | Generic system boundaries and service-placement choices |
| [`docs/homelab-hardware-specs.md`](docs/homelab-hardware-specs.md) | Blank, evidence-labeled local hardware worksheet; no owner hardware is recorded |
| [`docs/evidence-labels.md`](docs/evidence-labels.md) | Reusable labels for observed, reported, designed, and unknown facts |
| [`docs/wsl-workspace.md`](docs/wsl-workspace.md) | Native WSL authority and Windows-to-WSL execution safety |
| [`docs/proxmox-approval-gate.md`](docs/proxmox-approval-gate.md) | Read-only inventory and exact guest-change approval |
| [`docs/bitwarden-machine-accounts.md`](docs/bitwarden-machine-accounts.md) | Machine account scope, injection, rotation, and recovery patterns |
| [`docs/deployment-roadmap.md`](docs/deployment-roadmap.md) | Example staged deployment planning |
| [`PUBLICATION_BOUNDARY.md`](PUBLICATION_BOUNDARY.md) | What this public snapshot includes, excludes, and cannot certify |

## References

[1] [mise documentation](https://mise.jdx.dev/)  
[2] [Television documentation](https://alexpasmantier.github.io/television/)  
[3] [Bitwarden Secrets Manager documentation](https://bitwarden.com/help/secrets-manager-overview/)  
[4] [Proxmox VE documentation](https://pve.proxmox.com/pve-docs/)
