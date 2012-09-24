# Board-specific init 
PRODUCT_COPY_FILES += device/lge/swift/files/init.rc:root/init.rc
PRODUCT_COPY_FILES += device/lge/swift/files/init.swift.rc:root/init.swift.rc
PRODUCT_COPY_FILES += device/lge/swift/files/init.usb.rc:root/init.usb.rc
PRODUCT_COPY_FILES += device/lge/swift/files/ueventd.rc:root/ueventd.rc
PRODUCT_COPY_FILES += device/lge/swift/files/initlogo.rle:root/initlogo.rle

# etc
PRODUCT_COPY_FILES += \
	device/lge/swift/prebuilt/etc/hosts:system/etc/hosts \
	device/lge/swift/prebuilt/etc/resolv.conf:system/etc/resolv.conf \
	device/lge/swift/prebuilt/etc/gps.conf:system/etc/gps.conf \
	device/lge/swift/prebuilt/etc/vold.fstab:/system/etc/vold.fstab \
	device/lge/swift/prebuilt/etc/init.d/00banner:system/etc/init.d/00banner \
	device/lge/swift/prebuilt/etc/init.d/03mountext:system/etc/init.d/03mountext \

# Audio & Media
PRODUCT_COPY_FILES += \
	device/lge/swift/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
	device/lge/swift/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml \
	device/lge/swift/prebuilt/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
	device/lge/swift/prebuilt/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
	device/lge/swift/proprietary/lib/sound/libaudioeq.so:system/lib/libaudioeq.so \
	device/lge/swift/proprietary/lib/sound/libaudioalsa.so:system/lib/libaudioalsa.so \
	device/lge/swift/prebuilt/etc/audio_policy.conf:system/etc/audio_policy.conf \
	
# Camera proprietaries
PRODUCT_COPY_FILES += \
	device/lge/swift/proprietary/lib/camera/liboemcamera.so:system/lib/liboemcamera.so \
	device/lge/swift/proprietary/lib/camera/libmmjpeg.so:system/lib/libmmjpeg.so \
	device/lge/swift/proprietary/lib/camera/libmmipl.so:system/lib/libmmipl.so \

# RIL
PRODUCT_COPY_FILES += \
	device/lge/swift/proprietary/lib/ril/libauth.so:system/lib/libauth.so \
	device/lge/swift/proprietary/lib/ril/libbcmwl.so:system/lib/libbcmwl.so \
	device/lge/swift/proprietary/lib/ril/libcm.so:system/lib/libcm.so \
	device/lge/swift/proprietary/lib/ril/libdiag.so:system/lib/libdiag.so \
	device/lge/swift/proprietary/lib/ril/libdll.so:system/lib/libdll.so \
	device/lge/swift/proprietary/lib/ril/libdsm.so:system/lib/libdsm.so \
	device/lge/swift/proprietary/lib/ril/libdss.so:system/lib/libdss.so \
	device/lge/swift/proprietary/lib/ril/libgsdi_exp.so:system/lib/libgsdi_exp.so \
	device/lge/swift/proprietary/lib/ril/libgstk_exp.so:system/lib/libgstk_exp.so \
	device/lge/swift/proprietary/lib/ril/libmmgsdilib.so:system/lib/libmmgsdilib.so \
	device/lge/swift/proprietary/lib/ril/libnv.so:system/lib/libnv.so \
	device/lge/swift/proprietary/lib/ril/liboem_rapi.so:system/lib/liboem_rapi.so \
	device/lge/swift/proprietary/lib/ril/liboncrpc.so:system/lib/liboncrpc.so \
	device/lge/swift/proprietary/lib/ril/libpbmlib.so:system/lib/libpbmlib.so \
	device/lge/swift/proprietary/lib/ril/libqmi.so:system/lib/libqmi.so \
	device/lge/swift/proprietary/lib/ril/libqueue.so:system/lib/libqueue.so \
	device/lge/swift/proprietary/lib/ril/libril_log.so:system/lib/libril_log.so \
	device/lge/swift/proprietary/lib/ril/libril-qc-1.so:system/lib/libril-qc-1.so \
	device/lge/swift/proprietary/lib/ril/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \
	device/lge/swift/proprietary/lib/ril/libwms.so:system/lib/libwms.so \
	device/lge/swift/proprietary/lib/ril/libwmsts.so:system/lib/libwmsts.so \

# LGE services
PRODUCT_COPY_FILES += \
	device/lge/swift/proprietary/akmd2:system/bin/akmd2 \
	device/lge/swift/proprietary/qmuxd:system/bin/qmuxd \
	device/lge/swift/proprietary/rild:system/bin/rild \
	
# GPS
PRODUCT_COPY_FILES += \
	device/lge/swift/proprietary/lib/gps/libcommondefs.so:system/lib/libcommondefs.so \
	device/lge/swift/proprietary/lib/gps/libgps.so:system/lib/libgps.so \
	device/lge/swift/proprietary/lib/gps/libloc_api.so:system/lib/libloc_api.so \
	device/lge/swift/proprietary/lib/gps/libloc-rpc.so:system/lib/libloc-rpc.so \
	device/lge/swift/proprietary/lib/gps/libloc.so:system/lib/libloc.so \
	device/lge/swift/proprietary/lib/gps/libloc.so:obj/lib/libloc.so \

# Bluetooth
PRODUCT_COPY_FILES += \
	device/lge/swift/proprietary/bluetooth/BCM4325D1_004.002.004.0262.0270.hcd:system/bin/BCM4325D1_004.002.004.0262.0270.hcd \
	device/lge/swift/proprietary/bluetooth/btld:system/bin/btld \

# Wifi
PRODUCT_COPY_FILES += \
	device/lge/swift/prebuilt/etc/wl/nvram.txt:system/etc/wl/nvram.txt \
	device/lge/swift/prebuilt/etc/wl/rtecdc.bin:system/etc/wl/rtecdc.bin \
	device/lge/swift/prebuilt/etc/wl/rtecdc-apsta.bin:system/etc/wl/rtecdc-apsta.bin \
	device/lge/swift/prebuilt/etc/wl/rtecdc-mfgtest.bin:system/etc/wl/rtecdc-mfgtest.bin \
	device/lge/swift/prebuilt/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
	device/lge/swift/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
	device/lge/swift/proprietary/wpa_supplicant:system/bin/wpa_supplicant \
	
# Keylayouts
PRODUCT_COPY_FILES += \
	device/lge/swift/prebuilt/keylayout/msm_touchscreen.kl:system/usr/keylayout/msm_touchscreen.kl \
	device/lge/swift/prebuilt/idc/msm_touchscreen.idc:system/usr/idc/msm_touchscreen.idc \
	device/lge/swift/prebuilt/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
	device/lge/swift/prebuilt/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
	device/lge/swift/prebuilt/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
	device/lge/swift/prebuilt/keylayout/7k_headset.kl:system/usr/keylayout/7k_headset.kl \
	device/lge/swift/prebuilt/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \

# OpenGL
PRODUCT_COPY_FILES += \
	device/lge/swift/proprietary/lib/egl/egl.cfg:system/lib/egl/egl.cfg \
	device/lge/swift/prebuilt/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \
	device/lge/swift/prebuilt/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
	device/lge/swift/proprietary/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
	device/lge/swift/proprietary/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
	device/lge/swift/proprietary/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
	device/lge/swift/proprietary/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
	device/lge/swift/proprietary/lib/egl/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \
	device/lge/swift/proprietary/lib/egl/libgsl.so:system/lib/libgsl.so \
	device/lge/swift/proprietary/lib/egl/libsc-a2xx.so:system/lib/libsc-a2xx.so \
	device/lge/swift/prebuilt/etc/adreno_config.txt:system/etc/adreno_config.txt \
	device/lge/swift/proprietary/lib/egl/libOpenVG.so:system/lib/libOpenVG.so \

# HW
PRODUCT_COPY_FILES += \
	device/lge/swift/proprietary/lib/lights.swift.so:system/lib/hw/lights.swift.so \

# HW ICS libs
PRODUCT_COPY_FILES += \
	device/lge/swift/proprietary/lib/sound/audio.primary.msm7x27.so:system/lib/hw/audio.primary.msm7x27.so \
	device/lge/swift/proprietary/lib/sound/audio_policy.msm7x27.so:system/lib/hw/audio_policy.msm7x27.so \
	
# use all present proprietary apk
PRODUCT_COPY_FILES += $(shell find device/lge/swift/prebuilt/googleapps -name '*.apk' \
	-printf '%p:system/app/%f ')

# use all present proprietary lib
PRODUCT_COPY_FILES += $(shell find device/lge/swift/prebuilt/googleapps -name '*.so' \
	-printf '%p:system/lib/%f ')

# use all present proprietary jar
PRODUCT_COPY_FILES += $(shell find device/lge/swift/prebuilt/googleapps -name '*.jar' \
	-printf '%p:system/framework/%f ')

# use all present proprietary xml (permissions)
PRODUCT_COPY_FILES += $(shell find device/lge/swift/prebuilt/googleapps -name '*.xml' \
	-printf '%p:system/etc/permissions/%f ')

# use all present proprietary lib
PRODUCT_COPY_FILES += $(shell find device/lge/swift/proprietary/lib/omx -name '*.so' \
	-printf '%p:system/lib/%f ')
