#
# Copyright (C) 2022-2023 The LineageOS Project
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

TARGET_LINUX_KERNEL_VERSION := 5.4

TARGET_SOC_BASE := exynos2100

# Gralloc
BOARD_USES_EXYNOS5_COMMON_GRALLOC := true
BOARD_USES_EXYNOS_GRALLOC_VERSION := 4
BOARD_USES_GRALLOC_ION_SYNC := true
USE_OPENGL_RENDERER := true
BOARD_USES_ALIGN_RESTRICTION := true
BOARD_USES_EXYNOS_DATASPACE_FEATURE := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
BOARD_EXYNOS_S10B_FORMAT_ALIGN := 64

# 1. Exynos C2
BOARD_USE_DEFAULT_SERVICE := false
BOARD_USE_CSC_FILTER := true
BOARD_USE_DEC_SW_CSC := false
BOARD_USE_ENC_SW_CSC := false
BOARD_SUPPORT_MFC_ENC_RGB := true
BOARD_USE_BLOB_ALLOCATOR := true
BOARD_USE_PERFORMANCE := true
BOARD_USE_QUERY_HDR2SDR := false
BOARD_USE_COMPRESSED_COLOR := true

# 2. Exynos OMX
BOARD_USE_DMA_BUF := true
BOARD_USE_NON_CACHED_GRAPHICBUFFER := true
BOARD_USE_GSC_RGB_ENCODER := true
BOARD_USE_CSC_HW := false
BOARD_USE_S3D_SUPPORT := false
BOARD_USE_DEINTERLACING_SUPPORT := true
BOARD_USE_HEVCENC_SUPPORT := true
BOARD_USE_HEVC_HWIP := false
BOARD_USE_VP9DEC_SUPPORT := true
BOARD_USE_VP9ENC_SUPPORT := true
BOARD_USE_WFDENC_SUPPORT := true
BOARD_USE_CUSTOM_COMPONENT_SUPPORT := true
BOARD_USE_VIDEO_EXT_FOR_WFD_HDCP := true
BOARD_USE_SINGLE_PLANE_IN_DRM := false
BOARD_USE_WA_ION_BUF_REF := true
BOARD_USE_DIVX_ENABLE := true

# Primary AudioHAL Configuration
BOARD_USES_GENERIC_AUDIO := true
BOARD_USE_COMMON_AUDIOHAL := true
BOARD_USE_CALLIOPE_AUDIOHAL := false
BOARD_USE_AUDIOHAL := false
BOARD_USE_AUDIOHAL_COMV1 := true
BOARD_USE_SOUNDTRIGGER_HAL := false
BOARD_USE_SOUNDTRIGGER_HAL_MMAP := false

# HWComposer
BOARD_HWC_VERSION := hwc3
TARGET_USES_HWC2 := true
HWC_SKIP_VALIDATE := true
TARGET_HAS_WIDE_COLOR_DISPLAY := true
BOARD_USES_HWC_SERVICES := false
VSYNC_EVENT_PHASE_OFFSET_NS := 0
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 0
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := false
BOARD_HDMI_INCAPABLE := true
BOARD_USES_EXYNOS_AFBC_FEATURE := true
VSYNC_EVENT_PHASE_OFFSET_NS := 0
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 0
BOARD_USES_HWC_CPU_PERF_MODE := true
BOARD_USES_HDR_INTERFACE := true
BOARD_USES_VSYNC_MODE := true

# WiFiDisplay
BOARD_USES_VIRTUAL_DISPLAY := true
BOARD_USES_DISABLE_COMPOSITIONTYPE_GLES := true
BOARD_USES_SECURE_ENCODER_ONLY := true

# Scaler
BOARD_USES_ALIGN_RESTRICTION := true
BOARD_USES_DEFAULT_CSC_HW_SCALER := true
BOARD_DEFAULT_CSC_HW_SCALER := 4
BOARD_USES_SCALER_M2M1SHOT := true

# Libhwjpeg
BOARD_HWJPEG_ANDROID_VERSION := 11
TARGET_USES_UNIVERSAL_LIBHWJPEG := true

# Acryl
BOARD_LIBACRYL_DEFAULT_COMPOSITOR := fimg2d_9820
BOARD_LIBACRYL_DEFAULT_SCALER := mscl_9810
BOARD_LIBACRYL_DEFAULT_BLTER := fimg2d_9810_blter
BOARD_LIBACRYL_G2D9810_HDR_PLUGIN := libacryl_plugin_slsi_hdr10

# Gralloc4
SOONG_CONFIG_NAMESPACES += arm_gralloc
SOONG_CONFIG_arm_gralloc := \
	gralloc_arm_no_external_afbc \
	mali_gpu_support_afbc_basic \
	gralloc_init_afbc \
	gralloc_ion_sync_on_lock \
	dpu_support_1010102_afbc

SOONG_CONFIG_arm_gralloc_gralloc_arm_no_external_afbc := false
SOONG_CONFIG_arm_gralloc_mali_gpu_support_afbc_basic := true
SOONG_CONFIG_arm_gralloc_gralloc_init_afbc := true
SOONG_CONFIG_arm_gralloc_gralloc_ion_sync_on_lock := $(BOARD_USES_GRALLOC_ION_SYNC)
SOONG_CONFIG_arm_gralloc_dpu_support_1010102_afbc := true

# libExynosGraphicbuffer
SOONG_CONFIG_NAMESPACES += exynosgraphicbuffer
SOONG_CONFIG_exynosgraphicbuffer := \
	gralloc_version

include hardware/samsung_slsi-linaro/config/BoardConfigCommon.mk
