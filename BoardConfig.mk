#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from common mititanium-common
include device/xiaomi/mititanium-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/vince

# Security patch level
VENDOR_SECURITY_PATCH = $(PLATFORM_SECURITY_PATCH)

# Inherit from the proprietary version
include vendor/xiaomi/vince/BoardConfigVendor.mk
