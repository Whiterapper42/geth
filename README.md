# geth
launching geth/lighgthouse
# Launching Geth & Lighthouse

This repository contains configurations and setup scripts for running an Ethereum consensus client (Lighthouse) and execution client (Geth). It supports syncing from genesis, validator management, and full node deployment.

## Features
- Geth execution client setup
- Lighthouse beacon chain node configuration
- Validator key management (optional)
- Systemd service files (Linux)
- Instructions for syncing and monitoring

## Requirements
- Ubuntu 22.04+
- Geth (vX.X.X)
- Lighthouse (vX.X.X)
- 4+ CPUs, 16GB+ RAM, SSD recommended

## Setup
Instructions coming soon...
# Notarization Tools

This toolkit notarizes the Geth binary with verifiable metadata, GPG verification, and decentralized anchoring via IPFS and OpenTimestamps.

## Features
- GPG signature validation
- SHA256 checksum
- Author declaration linkage
- Smart contract binding for on-chain proof
- IPFS and OpenTimestamps anchoring

## Usage
```bash
bash notarization-tools/notarize.sh
## 🔍 Public Release Ledger

- [CHANGELOG.md](./changelog.md) – Human-readable release history
- [release.json](./release.json) – Machine-readable metadata: hashes, CIDs, declarations
- [SHA256SUMS](./SHA256SUMS) + [Signature](./SHA256SUMS.asc) – Integrity + provenance
