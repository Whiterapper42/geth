# === EMBED METADATA ===
echo "SHA256: $(sha256sum "$BINARY" | cut -d' ' -f1)" >> "$OUTPUT"
echo "GPG User ID: $(gpg --with-colons --list-sigs | grep '^uid' | cut -d':' -f10 | head -n1)" >> "$OUTPUT"
echo "Declaration: https://github.com/<your-username>/public-declarations/blob/main/your-declaration.txt" >> "$OUTPUT"
echo "Smart Contract Hash: 0x123abc... (replace with real hash)" >> "$OUTPUT"
