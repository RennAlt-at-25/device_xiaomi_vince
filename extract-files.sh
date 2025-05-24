#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

function blob_fixup() {
    case "${1}" in
        vendor/lib64/hw/gf_fingerprint.goodix.default.so)
            "${PATCHELF_0_18}" --replace-needed "libvendor.goodix.hardware.fingerprint@1.0.so" "vendor.goodix.hardware.fingerprint@1.0.so" "${2}"
            ;;
        vendor/lib64/libvendor.goodix.hardware.fingerprint@1.0-service.so)
            "${PATCHELF_0_18}" --remove-needed "libprotobuf-cpp-lite.so" "${2}"
            "${PATCHELF_0_18}" --replace-needed "libvendor.goodix.hardware.fingerprint@1.0.so" "vendor.goodix.hardware.fingerprint@1.0.so" "${2}"
            ;;
        vendor/lib/libts_detected_face_hal.so)
            ;&
        vendor/lib/libts_face_beautify_hal.so)
            "${PATCHELF}" --replace-needed "libstdc++.so" "libstdc++_vendor.so" "${2}"
            ;;
    esac
}

# If we're being sourced by the common script that we called,
# stop right here. No need to go down the rabbit hole.
if [ "${BASH_SOURCE[0]}" != "${0}" ]; then
    return
fi

set -e

export DEVICE=vince
export DEVICE_COMMON=mititanium-common
export VENDOR=xiaomi

"./../../${VENDOR}/${DEVICE_COMMON}/extract-files.sh" "$@"
