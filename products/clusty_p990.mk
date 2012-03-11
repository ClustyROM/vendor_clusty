# Inherit AOSP device configuration for p990.
$(call inherit-product, device/lge/p990/p990.mk)

# Inherit common product files.
$(call inherit-product, vendor/clusty/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/clusty/configs/gsm.mk)

# p990 overlay

# Setup device specific product configuration.
PRODUCT_NAME := clusty_p990
PRODUCT_BRAND := lge
PRODUCT_DEVICE := p990
PRODUCT_MODEL := LG-P990
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=lge_star BUILD_ID=GRJ22 BUILD_FINGERPRINT=lge/lge_star/p990_EUR-xx:2.3.4/GRJ22/lgp990-V20l.422C563E:user/release-keys PRIVATE_BUILD_DESC="lge_star-user 2.3.4 GRJ22 422C563E release-keys"

# boot animation
PRODUCT_COPY_FILES += \
	vendor/clusty/prebuilt/common/media/lgbootanimation.zip:system/media/bootanimation.zip


