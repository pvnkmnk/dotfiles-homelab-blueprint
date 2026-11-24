# Homelab Hardware Profile Worksheet

> **Generic template only.** This public file intentionally records no owner's hardware. Complete a local or private copy, and do not publish identifying values without a separate review.

## Evidence record

| Field | Local entry |
|---|---|
| Evidence label | `<observed / owner-reported / designed / unknown>` |
| Observed at | `<date, time, and timezone, or not applicable>` |
| Source and method | `<read-only command, vendor report, or owner statement>` |
| Scope | `<which device or component; keep identifying values private>` |
| Confidence / limitations | `<what this evidence does and does not establish>` |

## Workstation profile

| Field | Local value | Evidence note |
|---|---|---|
| Device role | `<local value or unknown>` | `<source and observed time>` |
| Operating system and build | `<local value or unknown>` | `<source and observed time>` |
| CPU model and logical capacity | `<local value or unknown>` | `<source and observed time>` |
| Installed and usable memory | `<local value or unknown>` | `<source and observed time>` |
| GPU and available memory | `<local value or unknown>` | `<source and observed time>` |
| Storage types and free capacity | `<local value or unknown>` | `<source and observed time>` |
| Virtualization / container limits | `<local value or unknown>` | `<source and observed time>` |
| Network interfaces and role | `<local value or unknown>` | `<source and observed time>` |

## Proxmox node profile

| Field | Local value | Evidence note |
|---|---|---|
| Device role and form factor | `<local value or unknown>` | `<source and observed time>` |
| Proxmox and kernel versions | `<local value or unknown>` | `<source and observed time>` |
| CPU model, cores, and threads | `<local value or unknown>` | `<source and observed time>` |
| Installed and usable memory | `<local value or unknown>` | `<source and observed time>` |
| Storage devices and identifiers | `<record only in a private copy>` | `<source and observed time>` |
| Storage type, capacity, and free space | `<local value or unknown>` | `<source and observed time>` |
| Network interfaces and bridge design | `<local value or unknown>` | `<source and observed time>` |
| Acceleration devices / passthrough | `<local value or unknown>` | `<source and observed time>` |

## Workload constraints to assess

Do not derive capacity from a model name alone. Measure available memory, CPU pressure, storage latency and headroom, backup destination independence, and any container/VM limits. Record the measurement source, scope, and timestamp. Treat estimates and design assumptions as such; mark missing measurements **unknown / unverified**.

## Publication reminder

Keep completed host and hardware profiles in a private local inventory. This worksheet is intentionally generic; a filled local copy is not automatically safe to publish.
