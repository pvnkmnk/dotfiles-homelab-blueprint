# Bitwarden Secrets Manager Machine Accounts

Create one scoped machine account per trust boundary rather than one broad credential shared by a workstation, WSL, guest, service, and CI workflow. Grant only the projects and access level required by the consuming runtime. Prefer a finite token expiry and a documented review cadence.

The default integration is a reviewed CLI runtime entrypoint that selects the intended project scope, disables inherited environment values unless reviewed, and never exposes values through shell tracing, process arguments, debug output, or inspection endpoints. A direct SDK integration requires a pinned official wrapper version, an explicit state-file decision, a narrow typed operation list, and a redaction review.

Rotation is a two-token cutover: create a replacement with the same minimum scope, update only the trusted runtime, validate without printing values, revoke the retired token, and record non-secret evidence. Treat suspected exposure as an incident: contain, revoke, replace, review access logs, and revalidate recovery.

References: [Bitwarden Secrets Manager](https://bitwarden.com/help/secrets-manager-overview/) and [Bitwarden Secrets Manager CLI](https://bitwarden.com/help/secrets-manager-cli/).
