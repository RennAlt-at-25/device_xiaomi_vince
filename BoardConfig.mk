#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from common mititanium-common
include device/xiaomi/mititanium-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/vince

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USERIMAGES_USE_EXT4 := true

# Security patch level
VENDOR_SECURITY_PATCH = $(PLATFORM_SECURITY_PATCH)

# Inherit from the proprietary version
include vendor/xiaomi/vince/BoardConfigVendor.mk
