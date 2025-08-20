#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from a16xm device
$(call inherit-product, device/samsung/a16xm/device.mk)

PRODUCT_DEVICE := a16xm
PRODUCT_NAME := twrp_a16xm
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A166P
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a16xmnsxx-user 13 TP1A.220624.014 A166PXXU1AXIC release-keys"

BUILD_FINGERPRINT := samsung/a16xmnsxx/a16xm:13/TP1A.220624.014/A166PXXU1AXIC:user/release-keys
