ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),swift)
include $(call first-makefiles-under,$(call my-dir))
endif
