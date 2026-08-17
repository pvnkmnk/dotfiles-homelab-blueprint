# Television Catalog Pattern

Use Television as a discovery and selection interface for the versioned `config/commands.tsv` catalog. The catalog should resolve a stable ID to a reviewed `dotctl` action; it must not turn the palette into an arbitrary shell launcher.

Keep state-changing operations out of the default catalog or route them to a proposal/confirmation step.
