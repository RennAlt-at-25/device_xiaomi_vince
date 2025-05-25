git clone --depth=1 https://gitlab.com/nekoprjkt/aosp-clang -b 17 prebuilts/clang/host/linux-x86/clang-aosp

# Clone common tree if not exists
if [ ! -d "device/xiaomi/mititanium-common" ]; then
    git clone https://github.com/RenzAlt/android_device_xiaomi_mititanium-common -b exthm device/xiaomi/mititanium-common
else
    echo "device/xiaomi/mititanium-common already exists, skipping clone"
fi

# Clone proprietary if not exists
if [ ! -d "vendor/xiaomi/vince" ]; then
    git clone --depth=1 https://github.com/RenzAlt/vendor_xiaomi_vince -b 13 vendor/xiaomi/vince
else
    echo "vendor/xiaomi/vince already exists, skipping clone"
fi

if [ ! -d "vendor/xiaomi/mititanium-common" ]; then
    git clone --depth=1 https://github.com/RenzAlt/proprietary_vendor_xiaomi_mititanium-common -b 13R vendor/xiaomi/mititanium-common
else
    echo "vendor/xiaomi/mititanium-common already exists, skipping clone"
fi

if [ ! -d "vendor/xiaomi/mititanium-common-graphics" ]; then
    git clone --depth=1 https://github.com/RenzAlt/proprietary_vendor_xiaomi_mititanium-common-graphics vendor/xiaomi/mititanium-common-graphics
else
    echo "vendor/xiaomi/mititanium-common-graphics already exists, skipping clone"
fi

if [ ! -d "vendor/xiaomi/mititanium-common-qc" ]; then
    git clone --depth=1 https://github.com/RenzAlt/proprietary_vendor_xiaomi_mititanium-common-qc vendor/xiaomi/mititanium-common-qc
else
    echo "vendor/xiaomi/mititanium-common-qc already exists, skipping clone"
fi

if [ ! -d "kernel/xiaomi/msm8953" ]; then
    git clone --depth=1 https://github.com/RenzAlt/kernel_xiaomi_vince -b main kernel/xiaomi/msm8953
else
    echo "kernel/xiaomi/msm8953 already exists, skipping clone"
fi

if [ ! -d "device/xiaomi/vince/camera" ]; then
    git clone --depth=1 https://github.com/Mi-Titanium/device_xiaomi-msm8953_camera -b 4.9 device/xiaomi/vince/camera
else
    echo "device/xiaomi/vince/camera already exists, skipping clone"
fi

if [ ! -d "vendor/extra" ]; then
    git clone --depth=1 https://github.com/k4ngcaribug/vendor_extra -b ten vendor/extra
else
    echo "vendor/extra already exists, skipping clone"
fi

if [ ! -d "hardware/mithorium-4.9" ]; then
    git clone --depth=1 https://github.com/Mi-Thorium/android_hardware_mithorium-4.9 -b lineage-19.1-caf-msm8953 hardware/mithorium-4.9
else
    echo "hardware/mithorium-4.9 already exists, skipping clone"
fi
