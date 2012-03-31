# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/clusty/overlay/common

PRODUCT_PACKAGES += \
    MusicFX \
    MusicVisualization \
    NoiseField \
    ClustyControl \
    su \
    AppWidgetPicker \
    Clustypapers

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=FreeWifi \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.enterprise_mode=1 \
    windowsmgr.max_events_per_sec=240 \
    ro.kernel.android.checkjni=0

# Blobs common to all devices
PRODUCT_COPY_FILES += \
    vendor/clusty/prebuilt/common/app/Superuser.apk:system/app/Superuser.apk \
    vendor/clusty/prebuilt/common/app/LatinImeDictionaryPack.apk:system/app/LatinImeDictionaryPack.apk \
    vendor/clusty/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf  \
    vendor/clusty/prebuilt/common/app/Microbes.apk:system/app/Microbes.apk \
    vendor/clusty/prebuilt/common/lib/libmicrobes_jni.so:system/lib/libmicrobes_jni.so
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
    
# Cron
PRODUCT_COPY_FILES += \
    vendor/clusty/prebuilt/common/etc/cron/cron.conf:system/etc/cron/cron.conf \
    vendor/clusty/prebuilt/common/etc/cron/cron.hourly/00drop_caches:system/etc/cron/cron.hourly/00drop_caches \
    vendor/clusty/prebuilt/common/etc/cron/cron.daily/00drop_caches:system/etc/cron/cron.daily/00drop_caches \
    vendor/clusty/prebuilt/common/etc/cron/cron.weekly/00drop_caches:system/etc/cron/cron.weekly/00drop_caches \
    vendor/clusty/prebuilt/common/etc/cron/cron.hourly/01clear_cache:system/etc/cron/cron.hourly/01clear_cache \
    vendor/clusty/prebuilt/common/etc/cron/cron.daily/01clear_cache:system/etc/cron/cron.daily/01clear_cache \
    vendor/clusty/prebuilt/common/etc/cron/cron.weekly/01clear_cache:system/etc/cron/cron.weekly/01clear_cache 

# Adding files needed for extra camera features
PRODUCT_COPY_FILES += \
    vendor/clusty/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/clusty/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd \
    vendor/clusty/prebuilt/common/media/video/AndroidInSpace.240p.mp4:system/media/video/AndroidInSpace.240p.mp4 \
    vendor/clusty/prebuilt/common/media/video/AndroidInSpace.480p.mp4:system/media/video/AndroidInSpace.480p.mp4 \
    vendor/clusty/prebuilt/common/media/video/Disco.240p.mp4:system/media/video/Disco.240p.mp4 \
    vendor/clusty/prebuilt/common/media/video/Disco.480p.mp4:system/media/video/Disco.480p.mp4 \
    vendor/clusty/prebuilt/common/media/video/Sunset.240p.mp4:system/media/video/Sunset.240p.mp4 \
    vendor/clusty/prebuilt/common/media/video/Sunset.480p.mp4:system/media/video/Sunset.480p.mp4

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Inherit common build.prop overrides
-include vendor/clusty/configs/common_versions.mk

