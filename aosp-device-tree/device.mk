#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Include GSI keys
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Partitions
PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Product characteristics
PRODUCT_CHARACTERISTICS := default

# Rootdir
PRODUCT_PACKAGES += \
    headsetstate.sh \
    init.qcom.usb.sh \
    setup_topmic2headphone.sh \
    capture.sh \
    setup_headsetmic2headphone.sh \
    capture_headset.sh \
    init.qcom.efs.sync.sh \
    init.qti.chg_policy.sh \
    init.crda.sh \
    install-recovery.sh \
    qca6234-service.sh \
    init.mi.usb.sh \
    us_cal.sh \
    init.qcom.sh \
    mishow.sh \
    init.qcom.sensors.sh \
    teardown_loopback.sh \
    init.class_main.sh \
    init.qcom.sdio.sh \
    init.qti.qcv.sh \
    init.qti.dcvs.sh \
    init.mdm.sh \
    init.qcom.post_boot.sh \
    init.qcom.class_core.sh \
    init.qcom.coex.sh \
    tp_data_collect.sh \
    setup_mainmic2headphone.sh \
    playback_headset.sh \
    tp_selftest.sh \
    playback.sh \
    init.qcom.early_boot.sh \

PRODUCT_PACKAGES += \
    fstab.default \
    init.target.rc \
    init.qcom.usb.rc \
    init.qti.ufs.rc \
    init.qcom.factory.rc \
    init.qcom.rc \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.default:$(TARGET_COPY_OUT_RAMDISK)/fstab.default

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 30

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/sweet/sweet-vendor.mk)
