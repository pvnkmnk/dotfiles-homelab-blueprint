# Dotfiles and Homelab Blueprint

This repository is a **public-safe blueprint** for a Windows workstation, a native WSL development plane, and a small Proxmox homelab. It shows how to keep a narrow `dotctl` command surface, pin and validate tools through `mise`, present approved actions through Television, scope machine secrets through Bitwarden Secrets Manager, and gate infrastructure changes before execution. It is intentionally **not** a copy of any live environment.

> This project contains patterns and placeholder configuration only. Replace every `<placeholder>` with local values, keep secrets outside Git, and obtain an explicit approval record before changing any infrastructure.

| Layer | Purpose | Public artifact | Local responsibility |
|---|---|---|---|
| Windows and WSL | Creator workstation and authoritative Linux workspace | `docs/wsl-workspace.md`, `scripts/verify_native_workspace.sh` | Choose the distribution and native workspace path |
| Tool control plane | Versioned tools and stable task entrypoints | `mise.toml`, `bin/dotctl` | Pin tools and verify downloads in the local environment |
| Command palette | Curated discovery rather than arbitrary shell launch | `config/commands.tsv` | Wire Television to approved catalog IDs only |
| Proxmox | Read-first guest, storage, network, and backup planning | `ansible/`, `docs/proxmox-approval-gate.md` | Confirm exact guest parameters before state changes |
| Secrets | Project-scoped machine accounts and trusted runtime injection | `secrets/contracts/`, `docs/bitwarden-machine-accounts.md` | Create tokens locally and keep values out of files and logs |

## Quick start

Clone the repository into a **native Linux filesystem** inside your WSL distribution. Begin from a Windows shell at `C:\` when launching WSL, then run the workspace verification script and review the commands that would be enabled. The examples deliberately stop before installing software, creating guests, or delivering secrets.

```text
Windows shell at C:\ → native WSL workspace probe → mise task review → approved local bootstrap
```

The repository is structured for safe customization. `mise.toml` defines a small task surface; `bin/dotctl` routes only known actions; `config/commands.tsv` is the catalog source; and `secrets/contracts/` records names, scope, lifecycle, and recovery information without recording values.

## What is deliberately absent

No hostnames, private addresses, guest identifiers, storage allocations, account names, media paths, secret values, API tokens, browser profiles, private keys, credential stores, or private Git history are published. The related reusable operational skills are released separately in the public [AgenticSelfHostSkills](https://github.com/pvnkmnk/AgenticSelfHostSkills) repository.

## Documentation map

| Document | Use it for |
|---|---|
| [`docs/architecture.md`](docs/architecture.md) | System boundaries and service-placement choices |
| [`docs/wsl-workspace.md`](docs/wsl-workspace.md) | Native WSL authority and Windows-to-WSL execution safety |
| [`docs/proxmox-approval-gate.md`](docs/proxmox-approval-gate.md) | Read-only inventory and exact guest-change approval |
| [`docs/bitwarden-machine-accounts.md`](docs/bitwarden-machine-accounts.md) | Machine account scope, `bws` injection, rotation, and recovery |
| [`docs/deployment-roadmap.md`](docs/deployment-roadmap.md) | Staged remaining deployment work |
| [`PUBLICATION_BOUNDARY.md`](PUBLICATION_BOUNDARY.md) | What this public snapshot includes and excludes |

## References

[1] [mise documentation](https://mise.jdx.dev/)  
[2] [Television documentation](https://alexpasmantier.github.io/television/)  
[3] [Bitwarden Secrets Manager documentation](https://bitwarden.com/help/secrets-manager-overview/)  
[4] [Proxmox VE documentation](https://pve.proxmox.com/pve-docs/)
