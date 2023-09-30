#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from sweet device
$(call inherit-product, device/xiaomi/sweet/device.mk)

PRODUCT_DEVICE := sweet
PRODUCT_NAME := lineage_sweet
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 2209116AG
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sweet_global2-user 11 RKQ1.210614.002 V14.0.4.0.THGMIXM release-keys"

BUILD_FINGERPRINT := Redmi/sweet_global2/sweet:11/RKQ1.210614.002/V14.0.4.0.THGMIXM:user/release-keys
