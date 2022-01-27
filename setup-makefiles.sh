#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

export DEVICE=dre9
export DEVICE_COMMON=sm4350-common
export VENDOR=oneplus

"./../../${VENDOR}/sm8350-common/setup-makefiles.sh" "$@"
