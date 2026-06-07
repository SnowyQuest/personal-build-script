#!/bin/bash

repo init --no-repo-verify --git-lfs -u https://github.com/Evolution-X/manifest -b bq2 --depth 1
/opt/crave/resync.sh

rm -rf device/xiaomi/zorn
rm -rf device/xiaomi/zorn-kernel
rm -rf vendor/xiaomi/zorn
rm -rf hardware/xiaomi

git clone https://github.com/ArmSM/device_xiaomi_zorn -b testZorn device/xiaomi/zorn
git clone https://github.com/Sakura-Devices/device_xiaomi_zorn-kernel -b 16.2 device/xiaomi/zorn-kernel
git clone https://codeberg.org/ArmSM/vendor_xiaomi_zorn -b 16 vendor/xiaomi/zorn
git clone https://github.com/Evolution-X-Devices/hardware_xiaomi -b bka hardware/xiaomi

source build/envsetup.sh
lunch lineage_zorn-bp4a-userdebug
m evolution
