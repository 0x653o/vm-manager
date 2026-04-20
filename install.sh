#!/bin/bash

BINARY_NAME="vm-manager"
CONF_DIR="/etc/modprobe.d"
CONF_FILE="$CONF_DIR/blacklist-kvm.conf"

echo "[*] Starting installation of $BINARY_NAME..."

# 1. Check if the configuration directory exists
if [ ! -d "$CONF_DIR" ]; then
    echo "[!] $CONF_DIR does not exist. Creating directory..."
    sudo mkdir -p "$CONF_DIR"
fi

# 2. Check if the blacklist file exists; create if it doesn't
if [ ! -f "$CONF_FILE" ]; then
    echo "[*] Creating configuration file at $CONF_FILE"
    sudo touch "$CONF_FILE"
fi

# 3. Grant execution permissions and move to system binary path
chmod +x "$BINARY_NAME"
sudo cp "$BINARY_NAME" /usr/local/bin/

echo "--------------------------------------------------"
echo "Setup Successful!"
echo "Commands:"
echo " - sudo $BINARY_NAME use kvm"
echo " - sudo $BINARY_NAME use vbox"
echo " - sudo $BINARY_NAME use vmware"
echo "--------------------------------------------------"
