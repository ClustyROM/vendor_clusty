$(call inherit-product, device/samsung/maguro/full_maguro.mk)
$(call inherit-product, vendor/clusty/products/common.mk)
$(call inherit-product, vendor/clusty/products/common_phone.mk)

PRODUCT_NAME := Clusty_maguro
PRODUCT_BRAND := google
PRODUCT_DEVICE := maguro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=yakju \
    BUILD_ID=IML74K \
    BUILD_DISPLAY_ID=ClustyROM-maguro \
    BUILD_FINGERPRINT="google/yakju/maguro:4.0.2/ICL53F/235179:user/release-keys" \
    PRIVATE_BUILD_DESC="yakju-user 4.0.2 ICL53F 235179 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-google \
    ro.com.google.mcc_fallback=262 \
    ro.setupwizard.mode=OPTIONAL \
    ro.com.android.dataroaming=false \
    drm.service.enabled=true \
    camera.flash_off=0 \
    dalvik.vm.lockprof.threshold=500

PRODUCT_COPY_FILES += \
    vendor/clusty/prebuilt/toro/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_PACKAGE_OVERLAYS += vendor/clusty/overlay/maguro
PRODUCT_PACKAGE_OVERLAYS += vendor/clusty/overlay/common
PRODUCT_PACKAGE_OVERLAYS += vendor/clusty/overlay/gsm
