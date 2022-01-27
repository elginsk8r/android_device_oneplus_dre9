#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/aosp_dre9.mk \
    $(LOCAL_DIR)/ev_dre9.mk

COMMON_LUNCH_CHOICES := \
    aosp_dre9-user \
    aosp_dre9-userdebug \
    aosp_dre9-eng \
    ev_dre9-user \
    ev_dre9-userdebug \
    ev_dre9-eng
