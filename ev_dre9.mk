#
# Copyright (C) 2021-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from dre9 device
$(call inherit-product, device/oneplus/dre9/aosp_dre9.mk)

# Boot animation
BOOT_ANIMATION_SIZE := 1080p

# Inherit some common Evervolv stuff.
$(call inherit-product, $(SRC_EVERVOLV_DIR)/config/common_full_phone.mk)

PRODUCT_NAME := ev_dre9
PRODUCT_MODEL := LE2115
PRODUCT_MODEL := DE2117

PRODUCT_SYSTEM_NAME := OnePlusN200
PRODUCT_SYSTEM_DEVICE := OnePlusN200

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="OnePlusN200-user 11   release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := OnePlus/OnePlusN200/OnePlusN200:11/RKQ1.201217.002/2107241556:user/release-keys
