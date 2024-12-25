#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common LineageOS stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from luigi device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_luigi
PRODUCT_DEVICE := luigi
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3660
PRODUCT_MANUFACTURER := realme

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="RE588BL1-user 14 UKQ1.230924.001 T.R4T2.1b694e7-2-1 release-keys" \
    BuildFingerprint=realme/RMX3660/RE588BL1:14/UKQ1.230924.001/T.R4T2.1b694e7-2-1:user/release-keys \
    DeviceName=RE588BL1 \
    DeviceProduct=RE588BL1 \
    SystemDevice=RE588BL1 \
    SystemName=RE588BL1
