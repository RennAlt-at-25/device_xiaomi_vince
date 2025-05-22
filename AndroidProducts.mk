#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/lineage_vince.mk \
    $(LOCAL_DIR)/exthm_vince.mk

COMMON_LUNCH_CHOICES := \
    lineage_vince-user \
    lineage_vince-userdebug \
    lineage_vince-eng \
    exthm_vince-user \
    exthm_vince-userdebug \
    exthm_vince-eng 
