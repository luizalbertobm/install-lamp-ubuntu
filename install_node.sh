#!/bin/bash
#=============================
echo "=== INSTALING NODE ========================================"
sudo apt install -qq nodejs
echo "Your node version is:"
node -v

echo "=== INSTALING NPM ========================================"
sudo apt install -qq npm
echo "Your npm version is:"
npm -v 