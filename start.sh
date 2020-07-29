#!/bin/bash
#=============================
sudo apt update
sudo apt upgrade

source ./install_lamp.sh
source ./install_composer.sh
source ./install_git.sh
source ./install_flutter.sh
source ./install_node.sh
sudo snap install android-studio