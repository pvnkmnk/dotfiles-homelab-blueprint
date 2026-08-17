# Proxmox Approval Gate

Read-only inventory and state-changing deployment are distinct phases. Before creating a service guest, record the node, guest type, unused identifier, hostname, CPU, memory, swap, root and data volumes, storage pools, address strategy, bridge, runtime features, first-service scope, backup destination, validation steps, and rollback boundary.

| Phase | Required evidence | Allowed action |
|---|---|---|
| Inventory | Current host health, storage, templates, network, backups, and existing guest classification | Read-only inspection |
| Proposal | Exact before/after values and rollback boundary | Present the request for confirmation |
| Execution | User approval for the exact proposal | Change only the approved new object |
| Validation | Boot, private access, mounts, logs, health, backup, and disposable restore result | Record non-secret evidence |

A legacy guest is out of scope by default. Never stop, modify, migrate, delete, or reuse an existing guest merely because a new project needs capacity.
