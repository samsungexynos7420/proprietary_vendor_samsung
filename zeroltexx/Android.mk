# Automatically generated file. DO NOT MODIFY
#
# This file is generated by device/samsung/zeroltexx/setup-makefiles.sh

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),zeroltexx)

include $(CLEAR_VARS)

LIFEVIBES_LIBS := libLifevibes_lvverx.so libLifevibes_lvvetx.so

LIFEVIBES_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/lib/,$(notdir $(LIFEVIBES_LIBS)))
$(LIFEVIBES_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "LifeVibes lib link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /vendor/lib/soundfx/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(LIFEVIBES_SYMLINKS)

endif
