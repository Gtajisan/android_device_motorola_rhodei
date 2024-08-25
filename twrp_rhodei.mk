#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from rhodei device
$(call inherit-product, device/motorola/rhodei/device.mk)

PRODUCT_DEVICE := rhodei
PRODUCT_NAME := twrp_rhodei
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g62 5G
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="rhodei_g-user 11 T1SSIS33.1-75-7-1 7a305a release-keys"

BUILD_FINGERPRINT := motorola/rhodei_g/rhodei:11/T1SSIS33.1-75-7-1/7a305a:user/release-keys
