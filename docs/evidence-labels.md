# Evidence Labels for Homelab Records

Use explicit evidence labels so a plan, report, or old observation cannot be mistaken for current live state. Every live value should include its scope, source or method, and observation time.

| Label | Meaning | Minimum record |
|---|---|---|
| **Observed** | Direct evidence collected from the named target using a stated method. | Value, target/scope, source or read-only method, timestamp, and limits. |
| **Owner-reported** | A person with relevant knowledge stated the value, but it has not been independently measured. | Reported value, speaker/role where appropriate, date, and what remains unverified. |
| **Designed / proposed** | A desired or planned state, not evidence that it exists or works. | Proposal, assumptions, approval state, and implementation status. |
| **Unknown / unverified** | No sufficiently current, scoped evidence is available. | What is unknown, why, and the next safe way to verify it. |

## Current-state record template

| Field | Entry |
|---|---|
| Claim | `<one fact or status>` |
| Evidence label | `<one label from above>` |
| Target and scope | `<the exact host, guest, service, or boundary>` |
| Source / method | `<command, API, document, or report; read-only where applicable>` |
| Observed / reported at | `<date, time, and timezone>` |
| Result and confidence | `<what was established and what was not>` |
| Limitations / next check | `<remaining uncertainty>` |

## Guardrails

- A failed connection or DNS lookup is a verification blocker; it does not prove that the target is absent or down.
- A historical observation stays historical until it is refreshed with new, scoped evidence. Never silently promote an old value to current.
- Plans and checked-in configuration do not prove deployment, health, access, or recovery readiness.
- Do not store secrets, private keys, or sensitive raw output in a public evidence record. Keep completed private inventory out of the public template.
