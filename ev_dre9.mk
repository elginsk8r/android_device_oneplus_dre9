#
# Copyright (C) 2021-2022 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from dre9 device
$(call inherit-product, device/oneplus/dre9/aosp_dre9.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay-ev

# Inherit some common Evervolv stuff.
$(call inherit-product, $(SRC_EVERVOLV_DIR)/config/common_full_phone.mk)

PRODUCT_NAME := ev_dre9
PRODUCT_MODEL := DE2117

PRODUCT_SYSTEM_NAME := OnePlusN200
PRODUCT_SYSTEM_DEVICE := OnePlusN200

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=OnePlusN200 \
    TARGET_PRODUCT=OnePlusN200 \
    PRIVATE_BUILD_DESC="OnePlusN200-user 11   release-keys"

BUILD_FINGERPRINT := OnePlus/OnePlusN200/OnePlusN200:11/RKQ1.201217.002/2107241556:user/release-keys

PRODUCT_CODENAME := Dolosus
BOOT_ANIMATION_SIZE := 1440p
