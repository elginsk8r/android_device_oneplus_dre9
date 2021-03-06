#
# Copyright (C) 2021 The LineageOS Project
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

# Inherit from oneplus sm4350-common
-include device/oneplus/sm4350-common/BoardConfigCommon.mk

DEVICE_PATH := device/oneplus/dre9

# Assert
TARGET_OTA_ASSERT_DEVICE := OnePlusN200,OnePlusN200TMO,dre8m,dre8t,dre9

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include

# Display
TARGET_SCREEN_DENSITY := 450

# Fingerprint
SOONG_CONFIG_ONEPLUS_FOD_POS_X = 453
SOONG_CONFIG_ONEPLUS_FOD_POS_Y = 2120
SOONG_CONFIG_ONEPLUS_FOD_SIZE = 174

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_dre9
TARGET_RECOVERY_DEVICE_MODULES := libinit_dre9

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# inherit from the proprietary version
-include vendor/oneplus/dre9/BoardConfigVendor.mk
