#
# Copyright (C) 2022 The LineageOS Project
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

include hardware/samsung_slsi-linaro/config/config.mk
	
TARGET_BOARD_KERNEL_HEADERS := hardware/samsung_slsi-linaro/exynos/kernel-$(TARGET_LINUX_KERNEL_VERSION)-headers/kernel-headers
TARGET_SLSI_VARIANT := linaro
TARGET_SOC_NAME := exynos
BOARD_USES_DT := true

# Acryl
ifneq ($(BOARD_LIBACRYL_DEFAULT_COMPOSITOR),)
$(call soong_config_set,libacryl,default_compositor,$(BOARD_LIBACRYL_DEFAULT_COMPOSITOR))
endif
ifneq ($(BOARD_LIBACRYL_DEFAULT_SCALER),)
$(call soong_config_set,libacryl,default_scaler,$(BOARD_LIBACRYL_DEFAULT_SCALER))
endif
ifneq ($(BOARD_LIBACRYL_DEFAULT_BLTER),)
$(call soong_config_set,libacryl,default_blter,$(BOARD_LIBACRYL_DEFAULT_BLTER))
endif
ifneq ($(BOARD_LIBACRYL_G2D9810_HDR_PLUGIN),)
$(call soong_config_set,libacryl,g2d9810_hdr_plugin,$(BOARD_LIBACRYL_G2D9810_HDR_PLUGIN))
endif

# exynosgraphicbuffer
ifeq ($(BOARD_USES_EXYNOS_GRALLOC_VERSION),3)
$(call soong_config_set,exynosgraphicbuffer,gralloc_version,three)
endif
ifeq ($(BOARD_USES_EXYNOS_GRALLOC_VERSION),4)
$(call soong_config_set,exynosgraphicbuffer,gralloc_version,four)
endif
