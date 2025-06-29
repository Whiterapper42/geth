# === EMBED METADATA ===
echo "SHA256: $(sha256sum "$BINARY" | cut -d' ' -f1)" >> "$OUTPUT"
echo "GPG User ID: $(gpg --with-colons --list-sigs | grep '^uid' | cut -d':' -f10 | head -n1)" >> "$OUTPUT"
echo "Declaration: https://github.com/<your-username>/public-declarations/blob/main/your-declaration.txt" >> "$OUTPUT"
echo "Smart Contract Hash: 0x123abc... (replace with real hash)" >> "$OUTPUT"
#!/bin/bash

BINARY="geth-windows-amd64-1.16.0-57f8971b.exe"
SIGFILE="$BINARY.asc"
OUTPUT="authorship-proof.txt"
SMART_CONTRACT_HASH="0xabc123..."  # Replace with your actual hash
DECLARATION_URL="https://github.com/Whiterapper42/public-declarations/blob/main/declaration.txt"

gpg --keyserver hkps://keyserver.ubuntu.com --recv-keys \
  F9585DE6 C2FF8BBF 9BA28146 7B9E2481 D2A67EAC E058A81C 05A5DDF0 1CCB7DD2

VERIFY_OUTPUT=$(gpg --status-fd 1 --verify "$SIGFILE" "$BINARY" 2>/dev/null)
FINGERPRINT=$(gpg --verify "$SIGFILE" "$BINARY" 2>&1 | grep 'Primary key fingerprint' || echo "Fingerprint not found")

{
  echo "=== Authorship Proof ==="
  echo "Binary: $BINARY"
  echo "Verified: $(date -u)"
  echo "SHA256: $(sha256sum "$BINARY" | cut -d' ' -f1)"
  echo "GPG Fingerprint: $FINGERPRINT"
  echo "GPG User ID: $(gpg --with-colons --list-sigs | grep '^uid' | cut -d':' -f10 | head -n1)"
  echo "Declaration: $DECLARATION_URL"
  echo "Smart Contract Hash: $SMART_CONTRACT_HASH"
  echo "$VERIFY_OUTPUT"
} > "$OUTPUT"

if command -v ots > /dev/null; then
  ots stamp "$OUTPUT"
  echo "Anchored with OpenTimestamps."
fi

if command -v ipfs > /dev/null; then
  CID=$(ipfs add -Q "$OUTPUT")
  echo "Anchored to IPFS: $CID" >> "$OUTPUT"
  echo "IPFS CID: $CID"
  echo "{\"file\": \"$OUTPUT\", \"cid\": \"$CID\"}" >> ipfs-anchors.json
fi
sudo systemctl daemon-reexec
sudo systemctl daemon-reload
sudo systemctl enable lighthouse-beacon
sudo systemctl start lighthouse-beacon
## 🔐 Trust Graph

[Geth Binary] ──GPG→ SHA256 ──OTS/IPFS→ [authorship-proof.txt]  
                                │  
                                ↓  
[Validator Identity] ──GPG→ Declaration ──IPFS→ Beacon Deposit  
