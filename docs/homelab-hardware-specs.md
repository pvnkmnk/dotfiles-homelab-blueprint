Host system: Windows desktop (ASUS custom build)

OS
- Microsoft Windows 11 Home Insider Preview
- Build: 26200
  (The full four-part version string is omitted deliberately: its leading
  numbers read as a private-network address to this repository's
  public-safety scanner. That is a false positive, but the gate is worth
  more than the digits, so the build number carries the information.)
- Architecture: 64-bit (x64)
- BIOS mode: UEFI
- Secure Boot: enabled
- Virtualization-based Security (VBS): running

CPU
- AMD Ryzen 5 5600
- 6 physical cores / 12 logical processors (threads)
- Reported clock: ~3.50 GHz

Memory
- Installed RAM: 16 GB
- Usable physical memory: 15.9 GB

Motherboard
- Manufacturer: ASUSTeK COMPUTER INC.
- Model: TUF GAMING B550M-PLUS WIFI
- Revision: X.0x
- Chipset/platform: AMD B550 / AM4

Firmware
- BIOS: American Megatrends Inc. version 3636
- BIOS date: 2026-01-04

Important constraints for workload design
- Treat this as a 16 GB RAM system: avoid designs that require large in-memory datasets, many parallel services, or multiple heavyweight local models simultaneously.
- CPU-only capacity is 6C/12T; cap CPU-heavy parallel workloads appropriately and prefer configurable worker counts.
- GPU model, VRAM, disk capacity/type, and WSL/Docker resource limits are not shown here—do not assume CUDA, GPU acceleration, or large local-model capacity without checking first.


---

Host system: Proxmox VE homelab node

Hardware
- Device: HP laptop, approximately HP 15-bs0xx series
- Approximate purchase year: 2018
- Form factor: Laptop / low-power always-on server

CPU
- Intel Core i5-7200U
- 2 physical cores / 4 threads
- Base clock: 2.5 GHz
- Turbo clock: up to 3.1 GHz
- TDP: 15 W
- Virtualization: Intel VT-x capable
- Workload profile: Low-power, limited parallel CPU capacity

Memory
- Installed RAM: 8 GB DDR4
- Memory speed: DDR4-2133
- Practical capacity: Small number of lightweight containers or 1–2 carefully sized VMs

Storage
- Primary disk: 1 TB SATA HDD
- Drive speed: 5,400 RPM
- Storage profile: High capacity but slow random I/O; avoid I/O-intensive databases, VM-heavy workloads, swap pressure, and frequent large writes

Networking
- Gigabit Ethernet

Integrated graphics
- Intel HD Graphics 620
- Intel Quick Sync Video available
- Potential use: Hardware-assisted video transcoding, subject to Proxmox/container passthrough configuration
- Not suitable for CUDA, modern GPU compute, or meaningful local LLM inference

Recommended design assumptions
- Assume 8 GB total RAM; leave memory headroom for Proxmox itself and filesystem cache.
- Prefer LXC containers over full VMs whenever possible.
- Keep CPU-intensive services low-concurrency and avoid several simultaneous compile, indexing, transcoding, or AI jobs.
- Treat the HDD as the principal bottleneck; minimize database write amplification and VM disk churn.
- Use Ethernet rather than Wi-Fi for server traffic and storage access.
- Do not design around GPU compute. Quick Sync is useful specifically for supported media-transcoding pipelines.