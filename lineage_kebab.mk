#
# Copyright (C) 2018 The LineageOS Project
#               2022-2023 The Evolution X Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from kebab device
$(call inherit-product, device/oneplus/kebab/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

#GAPPS
WITH_GMS := true

# Matrixx
MATRIXX_BUILD_TYPE := OFFICIAL
MATRIXX_MAINTAINER := zizzyboi
MATRIXX_CHIPSET := SM8250
MATRIXX_BATTERY := 4500mAh
MATRIXX_DISPLAY := 1080x2400
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_EXCLUDES_AUDIOFX := true
SYSTEM_OPTIMIZE_JAVA := true
SYSTEMUI_OPTIMIZE_JAVA := true
TARGET_HAS_UDFPS := true
TARGET_ENABLE_BLUR := true
EXTRA_UDFPS_ANIMATIONS := true
TARGET_SUPPORTS_QUICK_TAP := true

PRODUCT_NAME := lineage_kebab
PRODUCT_DEVICE := kebab
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := KB2005

PRODUCT_SYSTEM_NAME := OnePlus8T
PRODUCT_SYSTEM_DEVICE := OnePlus8T

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="OnePlus8T-user 13 RKQ1.211119.001 R.13ebe2e_1-170dfb release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := OnePlus/OnePlus8T/OnePlus8T:13/RKQ1.211119.001/R.13ebe2e_1-170dfb:user/release-keys
