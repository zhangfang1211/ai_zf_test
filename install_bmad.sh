#!/bin/bash

# Load nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Switch to Node 20
echo "Switching to Node.js 20..."
nvm use 20 >/dev/null || { nvm install 20 && nvm use 20; }

# Ensure package.json exists
if [ ! -f "package.json" ]; then
  echo "Initializing package.json..."
  npm init -y || echo "npm init failed (likely invalid name); continuing..."
fi

# Install bmad-method locally
echo "Installing bmad-method locally..."
export NPM_CONFIG_REGISTRY=https://registry.npmjs.org
npm install bmad-method --save

echo "Installation complete."

