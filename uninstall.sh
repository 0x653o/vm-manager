#!/bin/bash

BINARY_NAME="vm-manager"
CONF_DIR="/etc/modprobe.d"
CONF_FILE="$CONF_DIR/blacklist-kvm.conf"
BIN_DEST="/usr/local/bin/$BINARY_NAME"

echo "[*] Starting uninstallation of $BINARY_NAME..."

# 1. Remove the configuration file if it exists
if [ -f "$CONF_FILE" ]; then
    echo "[*] Removing configuration file at $CONF_FILE"
    sudo rm -f "$CONF_FILE"
else
    echo "[*] Configuration file $CONF_FILE not found."
fi

# 2. Remove the binary from system path
if [ -f "$BIN_DEST" ]; then
    echo "[*] Removing $BINARY_NAME from $BIN_DEST"
    sudo rm -f "$BIN_DEST"
else
    echo "[*] Binary $BIN_DEST not found."
fi

echo "--------------------------------------------------"
echo "Uninstallation Successful!"
echo "--------------------------------------------------"
