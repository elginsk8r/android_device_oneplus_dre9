#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/aosp_lemonade.mk \
    $(LOCAL_DIR)/ev_lemonade.mk

COMMON_LUNCH_CHOICES := \
    aosp_lemonade-user \
    aosp_lemonade-userdebug \
    aosp_lemonade-eng \
    ev_lemonade-user \
    ev_lemonade-userdebug \
    ev_lemonade-eng
