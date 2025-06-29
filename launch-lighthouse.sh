#!/bin/bash

# === Configuration ===
DATA_DIR="$HOME/.lighthouse"
NETWORK="mainnet"
EXECUTION_ENDPOINT="http://localhost:8551"
JWT_SECRET="./jwt-secret.hex"

# === Launch Beacon Node ===
lighthouse bn \
  --network "$NETWORK" \
  --datadir "$DATA_DIR" \
  --execution-endpoint "$EXECUTION_ENDPOINT" \
  --jwt-secrets "$JWT_SECRET" \
  --checkpoint-sync-url "https://mainnet.checkpoint.sigp.io" \
  --metrics \
  --http
