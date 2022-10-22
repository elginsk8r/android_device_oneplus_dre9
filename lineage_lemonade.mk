#
# Copyright (C) 2021-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from lemonade device
$(call inherit-product, device/oneplus/lemonade/aosp_lemonade.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_lemonade
PRODUCT_MODEL := LE2115

PRODUCT_SYSTEM_NAME := OnePlus9
PRODUCT_SYSTEM_DEVICE := OnePlus9

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="OnePlus9-user 12 RKQ1.211119.001 R.202208121853 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := OnePlus/OnePlus9/OnePlus9:12/RKQ1.211119.001/R.202208121853:user/release-keys
