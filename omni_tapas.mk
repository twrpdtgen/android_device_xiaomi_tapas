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
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from tapas device
$(call inherit-product, device/xiaomi/tapas/device.mk)

PRODUCT_DEVICE := tapas
PRODUCT_NAME := omni_tapas
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := tapas
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="tapas_global-user 13 TKQ1.221114.001 V14.0.14.0.TMTMIXM release-keys"

BUILD_FINGERPRINT := Redmi/tapas_global/tapas:13/TKQ1.221114.001/V14.0.14.0.TMTMIXM:user/release-keys
