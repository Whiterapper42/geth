[![Notarized](https://img.shields.io/badge/notarized-✓-brightgreen)](./authorship-proof.txt)
[![Validator Linked](https://img.shields.io/badge/validator--identity-signed-blue)](./validator-identity/)
[![release.json](https://img.shields.io/badge/metadata-complete-yellow)](./release.json)
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
bash notarization-tools/notarize.sh

That final triple backtick (` ``` `) ensures syntax highlighting ends cleanly before the next section.

---

### ✨ Suggestion: Move the Badges to the Top

Putting your Shields.io badges directly beneath the repo title (`# geth`) immediately signals trustworthiness. For example:

```markdown
# geth

[![Notarized](https://img.shields.io/badge/notarized-✓-brightgreen)](./authorship-proof.txt)
[![Validator Linked](https://img.shields.io/badge/validator--identity-signed-blue)](./validator-identity/)
[![release.json](https://img.shields.io/badge/metadata-complete-yellow)](./release.json)
## Usage
```bash
bash notarization-tools/notarize.sh
```
## Usage
```bash
bash notarization-tools/notarize.sh

That triple backtick ends the syntax block cleanly and restores markdown rendering for the rest.

---

### 🧼 Suggestion: Move the `🔍 Public Release Ledger` Section  
Right now, it’s stuck inside the code block. Once the backtick is fixed, it’ll appear properly below the **Usage** header. For clarity, you might even give it its own heading:

```markdown
## 🔍 Public Release Ledger

- [CHANGELOG.md](./changelog.md) – Human-readable release history  
- [release.json](./release.json) – Machine-readable metadata: hashes, CIDs, declarations  
- [SHA256SUMS](./SHA256SUMS) + [Signature](./SHA256SUMS.asc) – Integrity + provenance  

That triple backtick ends the syntax block cleanly and restores markdown rendering for the rest.

---

### 🧼 Suggestion: Move the `🔍 Public Release Ledger` Section  
Right now, it’s stuck inside the code block. Once the backtick is fixed, it’ll appear properly below the **Usage** header. For clarity, you might even give it its own heading:

```markdown
## 🔍 Public Release Ledger

- [CHANGELOG.md](./changelog.md) – Human-readable release history  
- [release.json](./release.json) – Machine-readable metadata: hashes, CIDs, declarations  
- [SHA256SUMS](./SHA256SUMS) + [Signature](./SHA256SUMS.asc) – Integrity + provenance  
[Geth Binary] — GPG ➝ SHA256 ➝ OTS/IPFS ➝ [authorship-proof.txt]
                          ↓
             [Validator Identity] — GPG ➝ Declaration ➝ IPFS ➝ Beacon Deposit
## Usage
```bash
bash notarization-tools/notarize.sh

That closes the lingering code block so everything afterward renders as intended.

---

### ✅ 2. Move the Public Release Ledger Out of the Code Block

It’s currently stuck inside the bash block. After closing it (above), paste this separately:

```markdown
## 🔍 Public Release Ledger

- [CHANGELOG.md](./changelog.md) – Human-readable release history  
- [release.json](./release.json) – Machine-readable metadata: hashes, CIDs, declarations  
- [SHA256SUMS](./SHA256SUMS) + [Signature](./SHA256SUMS.asc) – Integrity + provenance  
## 🔐 Trust Graph

[Geth Binary] ──GPG→ SHA256 ──OTS/IPFS→ [authorship-proof.txt]  
                                │  
                                ↓  
                   [Validator Identity] ──GPG→ Declaration ──IPFS→ Beacon Deposit  
## Usage
```bash
bash notarization-tools/notarize.sh

---

This markdown renders cleanly and conveys exactly how proof, metadata, and validator identity travel across tools and ledgers. If you ever want this as an SVG graphic or deployed to GitHub Pages with a browsable CID explorer—I’m right here to scaffold it.[![Notarized](https://img.shields.io/badge/notarized-✓-brightgreen)](./authorship-proof.txt)
[![Validator Linked](https://img.shields.io/badge/validator--identity-signed-blue)](./validator-identity/)
[![release.json](https://img.shields.io/badge/metadata-complete-yellow)](./release.json)

# geth
launching geth/lighthouse

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
[Geth Binary] ──GPG→ SHA256 ──OTS/IPFS→ [authorship-proof.txt]  
                                │  
                                ↓  
                   [Validator Identity] ──GPG→ Declaration ──IPFS→ Beacon Deposit  

This ensures code blocks are closed, markdown renders cleanly, and trust concepts shine through.

---

Would you like me to push this fix directly as a pull request or walk you through committing it to your GitHub repo? It’s almost poetic how your identity, validator, and toolchain all converge right here.[![Notarized](https://img.shields.io/badge/notarized-✓-brightgreen)](./authorship-proof.txt)
[![Validator Linked](https://img.shields.io/badge/validator--identity-signed-blue)](./validator-identity/)
[![release.json](https://img.shields.io/badge/metadata-complete-yellow)](./release.json)

# geth
launching geth/lighthouse

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

---

Once committed, your repo becomes the story of a validator told in cryptographic proofs. Want me to file this as a pull request or drop it into your GitHub Pages next as a browsable trust capsule?
## ☀️ Beacon Chain Integration

This repository includes a cryptographic trust path for the consensus layer. All validator declarations, Lighthouse sync operations, and configuration metadata are:

- ✅ Notarized with SHA256 + GPG
- ✅ Timestamped via OpenTimestamps (if available)
- ✅ Anchored to IPFS (optional)
- ✅ Linked in `beacon-release.json`

### Resources
- [`launch-lighthouse.sh`](./beacon/launch-lighthouse.sh)
- [`lighthouse.service`](./beacon/lighthouse.service)
- [`beacon-authorship-proof.txt`](./beacon/beacon-authorship-proof.txt)
- [`beacon-release.json`](./beacon/beacon-release.json)
## ☀️ Beacon Chain Integration

This repository includes a cryptographic trust path for the consensus layer. All validator declarations, Lighthouse sync operations, and configuration metadata are:

- ✅ Notarized with SHA256 + GPG
- ✅ Timestamped via OpenTimestamps (if available)
- ✅ Anchored to IPFS (optional)
- ✅ Linked in `beacon-release.json`

### Resources
- [`launch-lighthouse.sh`](./beacon/launch-lighthouse.sh)
- [`lighthouse.service`](./beacon/lighthouse.service)
- [`beacon-authorship-proof.txt`](./beacon/beacon-authorship-proof.txt)
- [`beacon-release.json`](./beacon/beacon-release.json)
