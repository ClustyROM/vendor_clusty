# Inherit AOSP device configuration for maguro.
$(call inherit-product, device/samsung/maguro/full_maguro.mk)

# Inherit common product files.
$(call inherit-product, vendor/clusty/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/clusty/configs/gsm.mk)

# Tuna overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/clusty/overlay/tuna
PRODUCT_PACKAGE_OVERLAYS += vendor/clusty/overlay/maguro

# Setup device specific product configuration.
PRODUCT_NAME := Clusty_maguro
PRODUCT_BRAND := google
PRODUCT_DEVICE := maguro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := BUILD_NUMBER=299849
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=yakju \
    BUILD_ID=IMM76D \
    BUILD_DISPLAY_ID=ClustyROM-maguro \
    BUILD_FINGERPRINT="google/yakju/maguro:4.0.4/IMM76D/299849:user/release-keys" \
    PRIVATE_BUILD_DESC="yakju-user 4.0.4 IMM76D 299849 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-google \
    ro.com.google.mcc_fallback=262 \
    ro.com.android.dataroaming=false \
    drm.service.enabled=true \
    camera.flash_off=0 \
    dalvik.vm.lockprof.threshold=500

# Copy maguro specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/clusty/prebuilt/tuna/Thinkfree.apk:system/app/Thinkfree.apk \
	vendor/clusty/prebuilt/toro/bootanimation.zip:system/media/bootanimation.zip \
	vendor/clusty/proprietary/ClockWidgets.apk:system/app/ClockWidgets.apk \
	vendor/clusty/proprietary/Home_HD_GalaxyNexus.apk:system/app/Home_HD_GalaxyNexus.apk \
	vendor/clusty/proprietary/WeatherWidget.apk:system/app/WeatherWidget.apk \
	vendor/clusty/proprietary/WidgetPicker.apk:system/app/WidgetPicker.apk
