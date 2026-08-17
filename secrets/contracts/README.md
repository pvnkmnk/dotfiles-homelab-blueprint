# Non-secret Machine-Account Contracts

A contract describes who may use a machine identity, which project it can read, which runtime entrypoint receives injection, when the token expires, and how recovery works. It never contains a token or a secret value.

Use CLI runtime injection by default. A direct SDK integration is an exception: pin the official wrapper version, define the permitted typed operations, decide state-file handling, and document redaction.
