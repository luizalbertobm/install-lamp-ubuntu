#!/bin/bash
#=============================
echo "=== INSTALING NODE ========================================"

wget https://storage.googleapis.com/flutter_infra/releases/stable/linux/flutter_linux_1.17.5-stable.tar.xz -P ~/development
cd ~/development
tar xf flutter_linux_1.17.5-stable.tar.xz
export PATH="$PATH:`pwd`/flutter/bin"
sudo rm -R ~/development/flutter_linux_1.17.5-stable.tar.xz
flutter doctor --android-licenses

echo "Flutter info:"
flutter doctor
