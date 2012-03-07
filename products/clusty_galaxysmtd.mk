$(call inherit-product, device/samsung/galaxysmtd/full_galaxysmtd.mk)
$(call inherit-product, vendor/clusty/products/common.mk)
$(call inherit-product, vendor/clusty/products/common_phone.mk)

PRODUCT_NAME := Clusty_galaxysmtd
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := galaxysmtd
PRODUCT_MODEL := GT-I9000
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_ID=IML74K \
    BUILD_DISPLAY_ID=Clusty-GALAXYSMTD \
    PRODUCT_NAME=GT-I9000 \
    TARGET_DEVICE=GT-I9000 \
    BUILD_ID=IML74K BUILD_FINGERPRINT="google/soju/crespo:2.3.4/GRJ22/121341:user/release-keys" \
    PRIVATE_BUILD_DESC="soju-user 2.3.4 GRJ22 121341 release-keys"

PRODUCT_COPY_FILES += \
    vendor/clusty/prebuilt/crespo/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_PACKAGE_OVERLAYS += vendor/clusty/overlay/common
PRODUCT_PACKAGE_OVERLAYS += vendor/clusty/overlay/galaxysmtd
PRODUCT_PACKAGE_OVERLAYS += vendor/clusty/overlay/gsm
PRODUCT_PACKAGE_OVERLAYS += vendor/clusty/overlay/no_led
