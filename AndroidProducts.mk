#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/aosp_lemonade.mk \
    $(LOCAL_DIR)/lineage_lemonade.mk

COMMON_LUNCH_CHOICES := \
    aosp_lemonade-user \
    aosp_lemonade-userdebug \
    aosp_lemonade-eng \
    lineage_lemonade-user \
    lineage_lemonade-userdebug \
    lineage_lemonade-eng
