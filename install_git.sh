#!/bin/bash
#=============================
sudo apt update
echo "=== INSTALING GIT ========================================"
sudo apt install -qq git
echo "Git version:"
git --version

echo "=== CONFIGURING GIT ========================================"
git config --global user.name "Luiz Alberto Mesquita"
git config --global user.email "luizalbertobm@gmail.com"
git config --global color.ui true
git config --global core.editor emacs
git config --list