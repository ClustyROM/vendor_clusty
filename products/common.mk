PRODUCT_NAME := Clusty
PODUCT_BRAND := Clusty
PRODUCT_DEVICE := generic


# stadard clusty packages 
PRODUCT_PACKAGES := \
    Camera \
    Gallery \
    SoundRecorder \
    FileManager \
    LibertySettings \
    AppWidgetPicker \
    Superuser \
    Superuser.apk \
    su


# Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    PhaseBeam \
    ClustyBeam \
    HoloSpiralWallpaper \
    NoiseField \
    MagicSmokeWallpapers \
    Clustypapers \
    Galaxy4 

#CM apps - Thanks to the great team over at CyanogenMod we have these awesome apps :)
PRODUCT_PACKAGES += \
    DSPManager \
    libcyanogen-dsp \
    audio_effects.conf

# init.d support
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
    vendor/clusty/prebuilt/common/etc/init_trigger.enabled:system/etc/init_trigger.enabled \
    vendor/clusty/prebuilt/common/etc/liberty.bsh:system/etc/liberty.bsh \
    vendor/clusty/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/clusty/prebuilt/common/bin/sysinit:system/bin/sysinit \
    vendor/clusty/prebuilt/common/app/ApexLauncher.apk:system/app/ApexLauncher.apk

# Google DNS servers and host file
PRODUCT_COPY_FILES += \
    vendor/clusty/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf \
    vendor/clusty/prebuilt/common/etc/hosts:system/etc/hosts

# Cron schedual 
PRODUCT_COPY_FILES += \
    vendor/clusty/prebuilt/common/etc/cron/cron.conf:system/etc/cron/cron.conf \
    vendor/clusty/prebuilt/common/etc/cron/cron.hourly/00drop_caches:system/etc/cron/cron.hourly/00drop_caches \
    vendor/clusty/prebuilt/common/etc/cron/cron.daily/00drop_caches:system/etc/cron/cron.daily/00drop_caches \
    vendor/clusty/prebuilt/common/etc/cron/cron.weekly/00drop_caches:system/etc/cron/cron.weekly/00drop_caches \
    vendor/clusty/prebuilt/common/etc/cron/cron.hourly/01clear_cache:system/etc/cron/cron.hourly/01clear_cache \
    vendor/clusty/prebuilt/common/etc/cron/cron.daily/01clear_cache:system/etc/cron/cron.daily/01clear_cache \
    vendor/clusty/prebuilt/common/etc/cron/cron.weekly/01clear_cache:system/etc/cron/cron.weekly/01clear_cache 

# Compcache/Zram support
PRODUCT_COPY_FILES += \
    vendor/clusty/prebuilt/common/etc/init.local.rc:system/etc/init.local.rc \
    vendor/clusty/prebuilt/common/bin/compcache:system/bin/compcache \
    vendor/clusty/prebuilt/common/bin/handle_compcache:system/bin/handle_compcache

# Term binarry for support for market updates
PRODUCT_COPY_FILES +=  \
    vendor/clusty/proprietary/Term.apk:system/app/Term.apk \
    vendor/clusty/proprietary/lib/armeabi/libjackpal-androidterm3.so:system/lib/libjackpal-androidterm3.so 

# Term info for nano support
PRODUCT_COPY_FILES += \
    vendor/clusty/prebuilt/common/etc/terminfo/l/linux:system/etc/terminfo/l/linux \
    vendor/clusty/prebuilt/common/etc/terminfo/u/unknown:system/etc/terminfo/u/unknown

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

# Added xbin files
PRODUCT_COPY_FILES += \
    vendor/clusty/prebuilt/common/xbin/backup:system/xbin/backup \
    vendor/clusty/prebuilt/common/xbin/bash:system/xbin/bash \
    vendor/clusty/prebuilt/common/xbin/btool:system/xbin/btool \
    vendor/clusty/prebuilt/common/xbin/busybox:system/xbin/busybox \
    vendor/clusty/prebuilt/common/xbin/drm1_func_test:system/xbin/drm1_func_test \
    vendor/clusty/prebuilt/common/xbin/gdb:system/xbin/gdb \
    vendor/clusty/prebuilt/common/xbin/gdbserver:system/xbin/gdbserver \
    vendor/clusty/prebuilt/common/xbin/market_history:system/xbin/market_history \
    vendor/clusty/prebuilt/common/xbin/nano:system/xbin/nano \
    vendor/clusty/prebuilt/common/xbin/rm_apks:system/xbin/rm_apks \
    vendor/clusty/prebuilt/common/xbin/run_backup:system/xbin/run_backup \
    vendor/clusty/prebuilt/common/xbin/run_restore:system/xbin/run_restore \
    vendor/clusty/prebuilt/common/xbin/ssmgrd:system/xbin/ssmgrd \
    vendor/clusty/prebuilt/common/xbin/sysro:system/xbin/sysro \
    vendor/clusty/prebuilt/common/xbin/sysrw:system/xbin/sysrw \
    vendor/clusty/prebuilt/common/xbin/zip:system/xbin/zip \
    vendor/clusty/prebuilt/common/xbin/zipalign:system/xbin/zipalign \


# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.android.wifi-watchlist=FreeWifi \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.setupwizard.enterprise_mode=1 \
    ro.modversion=clusty \
    ro.kernel.android.checkjni=0 \
    windowsmgr.max_events_per_sec=240 \
    wifi.supplicant_scan_interval=180
















