#!/bin/bash

repo init --no-repo-verify --git-lfs -u https://github.com/Evolution-X/manifest -b bq2 --depth 1
/opt/crave/resync.sh

rm -rf device/xiaomi/zorn
rm -rf device/xiaomi/sm8650-common
rm -rf kernel/xiaomi/sm8650
rm -rf vendor/xiaomi/zorn
rm -rf hardware/xiaomi

git clone https://github.com/zorn-trees/android_device_xiaomi_zorn -b lineage-23.0 device/xiaomi/zorn
git clone https://github.com/zorn-trees/device_xiaomi_sm8650-common -b lineage-23.1 device/xiaomi/sm8650-common
git clone https://github.com/zorn-trees/device_xiaomi_zorn-kernel -b A16 kernel/xiaomi/sm8650
git clone https://github.com/zorn-trees/android_vendor_xiaomi_zorn -b lineage-23.0 vendor/xiaomi/zorn
git clone https://github.com/zorn-trees/hardware_xiaomi -b lineage-22.2-wip hardware/xiaomi

source build/envsetup.sh
lunch lineage_zorn-bp4a-userdebug
m evolution
