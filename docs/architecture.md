# Architecture

The blueprint separates the **creator plane**, the **control plane**, and the **service plane**. Windows remains suitable for interactive creative work and graphical tools. Native WSL is the authoritative Linux development workspace. A resource-constrained Proxmox host is reserved for carefully measured always-on service workloads.

| Plane | Responsibilities | Explicit boundary |
|---|---|---|
| Windows | Interactive creator tools, browser, and optional burst workloads | Do not treat a Windows-mounted path as the authoritative WSL workspace |
| WSL | Git, `mise`, terminal tools, task execution, and configuration generation | Do not launch `wsl.exe` from a UNC working directory |
| Proxmox | Approved small always-on guests, managed storage, backups, and private access | Do not change guests, storage, networking, or firewall rules without exact approval |
| Bitwarden Secrets Manager | Scoped machine identities and trusted runtime injection | Do not place values in source control, arguments, logs, or Compose files |

The public design starts service access on a private LAN or a private VPN. Public exposure is a separate decision with its own threat model, certificate, authentication, and recovery requirements.
