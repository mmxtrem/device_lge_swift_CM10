$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Should be after the full_base include, which loads languages_full
PRODUCT_LOCALES += ru_RU mdpi
PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, device/lge/swift/swift-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/swift/overlay

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/lge/swift/prebuilt/kernel/zImage
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# copy all kernel modules to system/lib/modules
PRODUCT_COPY_FILES += $(shell test -d device/lge/swift/prebuilt/kernel/modules &&  \
	find device/lge/swift/prebuilt/kernel/modules -name '*.ko' \
	-printf '%p:system/lib/modules/%f ')

# Permission files
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml \

PRODUCT_PACKAGES += \
	hwaddrs \
	hcitool \
	audio.a2dp.default \
	audio_policy.msm7x27 \
	audio.primary.msm7x27 \
	hwcomposer.default \
	hwcomposer.msm7x27 \
	gps.swift \
	sensors.msm7x27 \
	camera.msm7x27 \
	gralloc.msm7x27 \
	copybit.msm7x27 \
	libcamera \
	libril \
	liblgdrm \
	liblgeat \
	liblgerft \
	libOmxCore \
	libmm-omxcore \
	libstagefrighthw \
	libgenlock \
	libgralloc \
	liboverlay \
	libtilerenderer \
	libmemalloc \
	libqdutils \
#	lights.msm7x27 \

PRODUCT_PACKAGES += \
	libaudioutils \
	libtinyalsa \
	tinyplay \
	tinycap \
	tinymix \

PRODUCT_PACKAGES += \
	libext2fs \
	libext2_uuid \
	libext2_e2p \
	libext2_blkid \
	libext2_com_err \
	libext2_profile \
	resize2fs \
	mke2fs \
	make_ext4fs \
	tune2fs \
	badblocks \
	e2fsck \
	flash_image \
	dump_image \
	erase_image \
	setup_fs

PRODUCT_PACKAGES += iwmulticall hostap wpa_supplicant dhcpcd
PRODUCT_PACKAGES += dhcpcd.conf wpa_supplicant.conf hostapd.conf

PRODUCT_PACKAGES += \
	LegacyCamera \
	com.android.future.usb.accessory \
	FM \
	librs_jni \
	LiveWallpapers \
	LiveWallpapersPicker \
	VisualizationWallpapers \

ADDITIONAL_DEFAULT_PROPERTIES += persist.sys.strictmode.disable=true

PRODUCT_PROPERTY_OVERRIDES += \
	ro.HOME_APP_ADJ=1 \
	ro.PERCEPTIBLE_APP_ADJ=0

PRODUCT_PROPERTY_OVERRIDES += \
	ro.kernel.android.checkjni=0 \
	dalvik.vm.checkjni=0

PRODUCT_PROPERTY_OVERRIDES += \
	ro.com.google.locationfeatures=1 \
	ro.telephony.call_ring.multiple=false \
	ro.telephony.call_ring.delay=1000 \
	pm.sleep_mode=true \
	ro.url.safetylegal=http://4pda.ru/forum/index.php?showuser=1382803 \
	ro.com.android.dataroaming=false \
	dalvik.vm.checkjni=false \
	dalvik.vm.dexopt-data-only=1 \
	net.dns1=8.8.8.8 \
	net.dns2=8.8.4.4 \
	
PRODUCT_PROPERTY_OVERRIDES += \
	ro.sf.hwrotation=1 \
	ro.sf.lcd_density=160 \
	persist.sys.use_16bpp_alpha=1 \
	persist.sys.use_dithering=1 \
#	ro.config.disable_hw_accel=false \
#	window_animation_scale=0 \
#	transition_animation_scale=0 \
#	debug.gr.numframebuffers=2 \
#	debug.enabletr=false \
#	debug.performance.tuning=1 \
#	hwui.render_dirty_regions=false \
#	debug.composition.type=gpu \
#	debug.sf.hw=1 \
#	hwui.disable_vsync=true \
#	hwui.print_config=choice \

PRODUCT_PROPERTY_OVERRIDES += \
        dalvik.vm.heapstartsize=5m \
        dalvik.vm.heapgrowthlimit=36m \
        dalvik.vm.heapsize=48m

ADDITIONAL_DEFAULT_PROPERTIES += \
	ro.secure=0 \
	ro.allow.mock.location=1 \
	ro.debuggable=1

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := swift
PRODUCT_DEVICE := swift
PRODUCT_MODEL := LG-GT540
