#
# Copyright 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := $(call my-dir)

ifneq ($(filter g3 d850 d851 d852 d855 ls990 vs985 f400, $(TARGET_DEVICE)),)

include $(call all-makefiles-under,$(LOCAL_PATH))

include $(CLEAR_VARS)

define vfatfilename
$(foreach f,$(1),$(shell echo $(f) | \
    awk 'BEGIN { FS="."; } { printf("%s.%s", substr($$1,1,8), $$2); }'))
endef

DXHDCP2_IMAGES := \
    dxhdcp2.b00 dxhdcp2.b01 dxhdcp2.b02 dxhdcp2.b03 dxhdcp2.mdt

DXHDCP2_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(DXHDCP2_IMAGES))
$(DXHDCP2_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "dxhdcp2 firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(call vfatfilename,$(notdir $@)) $@

ALL_DEFAULT_INSTALLED_MODULES += $(DXHDCP2_SYMLINKS)

KEYMASTER_IMAGES := \
    keymaste.b00 keymaste.b01 keymaste.b02 keymaste.b03 keymaste.mdt

KEYMASTER_SYMLINKS :=$(addprefix $(TARGET_OUT_ETC)/firmware/,$(KEYMASTER_IMAGES))
$(KEYMASTER_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "keymaster firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(call vfatfilename,$(notdir $@)) $@

ALL_DEFAULT_INSTALLED_MODULES += $(KEYMASTER_SYMLINKS)

MLSERVERAPP_IMAGES := \
    mlserverapp.b00 mlserverapp.b01 mlserverapp.b02 mlserverapp.b03 mlserverapp.mdt

MLSERVERAPP_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(MLSERVERAPP_IMAGES))
$(MLSERVERAPP_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "mlserverapp firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(call vfatfilename,$(notdir $@)) $@

ALL_DEFAULT_INSTALLED_MODULES += $(MLSERVERAPP_SYMLINKS)

TQS_IMAGES := \
    tqs.b00 tqs.b01 tqs.b02 tqs.b03 tqs.mdt

TQS_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(TQS_IMAGES))
$(TQS_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "tqs firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(call vfatfilename,$(notdir $@)) $@

ALL_DEFAULT_INSTALLED_MODULES += $(TQS_SYMLINKS)

WCD9320_IMAGES := \
    wcd9320_anc.bin wcd9320_mad_audio.bin wcd9320_mbhc.bin

WCD9320_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/wcd9320/,$(WCD9320_IMAGES))
$(WCD9320_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "wcd9320 firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	tf=$(notdir $@); if [ "$$tf" = "wcd9320_mbhc.bin" ]; then tf="mbhc.bin"; fi; ln -sf /data/misc/audio/$$tf $@

ALL_DEFAULT_INSTALLED_MODULES += $(WCD9320_SYMLINKS)

WIDEVINE_IMAGES := \
    widevine.b00 widevine.b01 widevine.b02 widevine.b03 widevine.mdt

WIDEVINE_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(WIDEVINE_IMAGES))
$(WIDEVINE_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "widevine firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(call vfatfilename,$(notdir $@)) $@

ALL_DEFAULT_INSTALLED_MODULES += $(WIDEVINE_SYMLINKS)

endif
