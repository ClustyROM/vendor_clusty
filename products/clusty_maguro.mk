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
PRODUCT_MANUFACTURER := Samsung

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
	vendor/clusty/proprietary/WidgetPicker.apk:system/app/WidgetPicker.apk \
	vendor/clusty/proprietary/GooglePlayMusic.apk:system/app/GooglePlayMusic.apk \
	vendor/clusty/proprietary/Rootexplorer.apk:system/app/RootExplorer.apk

# Blobs common to all devices
PRODUCT_COPY_FILES += \
    vendor/clusty/prebuilt/common/app/Superuser.apk:system/app/Superuser.apk \
    vendor/clusty/prebuilt/common/app/LatinImeDictionaryPack.apk:system/app/LatinImeDictionaryPack.apk \
    vendor/clusty/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf  \
    vendor/clusty/prebuilt/common/app/Microbes.apk:system/app/Microbes.apk \
    vendor/clusty/prebuilt/common/lib/libmicrobes_jni.so:system/lib/libmicrobes_jni.so \
	vendor/clusty/prebuilt/common/xbin/su:system/bin/su

# init.d
PRODUCT_COPY_FILES += \
    vendor/clusty/prebuilt/common/etc/init.d/00check:system/etc/init.d/00check \
    vendor/clusty/prebuilt/common/etc/init.d/01zipalign:system/etc/init.d/01zipalign \
    vendor/clusty/prebuilt/common/etc/init.d/02sysctl:system/etc/init.d/02sysctl \
    vendor/clusty/prebuilt/common/etc/init.d/03firstboot:system/etc/init.d/03firstboot \
    vendor/clusty/prebuilt/common/etc/init.d/05freemem:system/etc/init.d/05freemem \
    vendor/clusty/prebuilt/common/etc/init.d/06removecache:system/etc/init.d/06removecache \
    vendor/clusty/prebuilt/common/etc/init.d/07fixperms:system/etc/init.d/07fixperms \
    vendor/clusty/prebuilt/common/etc/init.d/09cron:system/etc/init.d/09cron \
    vendor/clusty/prebuilt/common/etc/init.d/10sdboost:system/etc/init.d/10sdboost \
    vendor/clusty/prebuilt/common/etc/init.d/98tweaks:system/etc/init.d/98tweaks \
    vendor/clusty/prebuilt/common/etc/init_trigger.disabled:system/etc/init_trigger.disabled \
    vendor/clusty/prebuilt/common/etc/liberty.bsh:system/etc/liberty.bsh \
    vendor/clusty/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf
