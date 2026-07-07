#!/bin/bash

# Installer for XAMPP CLI on Unix-like systems

INSTALL_PATH="/usr/local/bin/xampp"

echo "Installing XAMPP CLI..."

# Copy CLI script
cp xampp "$INSTALL_PATH"
chmod +x "$INSTALL_PATH"

echo "XAMPP CLI installed successfully."
echo
echo "You may now delete the installer folder manually if you wish."