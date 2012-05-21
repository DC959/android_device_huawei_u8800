## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := U8800

# Boot animation
TARGET_BOOTANIMATION_NAME := vertical-480x800

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)
$(call inherit-product, vendor/cm/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/u8800/full_u8800.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := u8800
PRODUCT_NAME := cm_u8800
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := Huawei U8800
PRODUCT_MANUFACTURER := Huawei

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=u8800 \
	BUILD_DISPLAY_ID="IMM76D BLECM9-0.02"
