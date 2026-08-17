# Native WSL Workspace Pattern

A Windows path, a UNC path, an agent mount, and a Linux path may refer to related locations without sharing safe execution behavior. Pick one native Linux path within a named distribution as authoritative, verify it before writing, and run project commands from that location.

From a Windows terminal, start at `C:\` before launching the distribution. Avoid using a `\\wsl.localhost\…` directory as the current working directory for a command that invokes `wsl.exe`. The included verifier rejects mounted Windows filesystem paths and confirms the selected workspace exists on a native filesystem.

For a generated artifact, preserve a checksum and install it atomically inside the native workspace. For a small change, use one noninteractive command and verify the resulting file from the same native WSL shell.
