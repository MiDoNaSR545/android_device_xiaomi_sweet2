#
# Copyright (C) 2021-2025 The LineageOS Project#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device.
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Lunaris Flag
WITH_GMS := true
WITH_BCR := true
HBM_SUPPORTED := true
LUNARIS_BUILD_TYPE := OFFICIAL
BYPASS_CHARGE_SUPPORTED := true
TARGET_OPTIMIZED_DEXOPT := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTED_REFRESH_RATES := 60,90,120
HBM_NODE := /sys/class/backlight/panel0-backlight/hbm_mode

PRODUCT_BRAND := Redmi
PRODUCT_DEVICE := sweet2
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Redmi Note 12 Pro
PRODUCT_NAME := lineage_sweet2
PRODUCT_SYSTEM_DEVICE := sweet
PRODUCT_SYSTEM_NAME := sweet_global2

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sweet_global2-user 13 TKQ1.221114.001 V816.0.3.0.THGMIXM release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := Redmi/sweet_global2/sweet:13/TKQ1.221114.001/V816.0.3.0.THGMIXM:user/release-keys
