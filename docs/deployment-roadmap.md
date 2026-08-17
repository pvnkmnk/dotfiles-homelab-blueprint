# Deployment Roadmap

The remaining work is intentionally sequenced to preserve reversibility and fit resource-constrained hardware. Each stage is blocked until the preceding stage has evidence of health, private access, backup behavior, and a documented rollback boundary.

| Stage | Outcome | Gate before advancing |
|---|---|---|
| 1. Confirm the guest proposal | A fully specified, approved fresh guest request | Exact user confirmation |
| 2. Create and validate the guest | New guest reaches private clients and has managed storage | Boot, updates, mounts, logs, and private reachability checks |
| 3. Create secret contracts | Separate non-secret contracts for approved runtime boundaries | Scope, expiry, owner, recovery, and entrypoint review |
| 4. Deploy initial low-resource services | An approved initial service pair is healthy | Health checks, private access, and rollback instructions |
| 5. Establish backup and restore | A disposable recovery proves data restoration | Successful restore validation |
| 6. Add heavier services | Database and thumbnail workloads are placed after measurement | CPU, memory, disk-I/O, and backup-capacity evidence |

No stage authorizes public exposure. A later access change requires a separate private-VPN, identity, TLS, and recovery design.
