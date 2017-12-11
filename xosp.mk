# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit some common XOSP stuff.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, vendor/xosp/config/common_full_phone.mk)
$(call inherit-product, vendor/xosp/config/xosp.mk)

# Inherit device configuration
$(call inherit-product, device/lge/hammerhead/full_hammerhead.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := xosp_hammerhead
PRODUCT_BRAND := google
PRODUCT_DEVICE := hammerhead
PRODUCT_MODEL := Nexus 5
PRODUCT_MANUFACTURER := LGE
RELEASE_TYPE := XOSP_INTERNAL
USE_CHROMIUM := true
#ROOT_METHOD := supersu

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=hammerhead \
    BUILD_FINGERPRINT=google/hammerhead/hammerhead:6.0.1/M4B30Z/3437181:user/release-keys \
    PRIVATE_BUILD_DESC="hammerhead-user 6.0.1 M4B30Z 3437181 release-keys"
