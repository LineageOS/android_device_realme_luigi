#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm6375-common
-include device/realme/sm6375-common/BoardConfigCommon.mk

DEVICE_PATH := device/realme/luigi

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_luigi

# Partitions
BOARD_ONEPLUS_DYNAMIC_PARTITIONS_SIZE := 11806965760
BOARD_SUPER_PARTITION_SIZE := 11811160064

# Touch
SOONG_CONFIG_NAMESPACES += OPLUS_LINEAGE_TOUCH_HAL
SOONG_CONFIG_OPLUS_LINEAGE_TOUCH_HAL := INCLUDE_DIR
SOONG_CONFIG_OPLUS_LINEAGE_TOUCH_HAL_INCLUDE_DIR := \
    $(DEVICE_PATH)/touch/include

# Inherit the proprietary files
-include vendor/realme/luigi/BoardConfigVendor.mk
