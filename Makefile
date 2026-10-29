# SPDX-License-Identifier: GPL-2.0
vendor := $(src)

ifeq ($(CONFIG_ARCH_CANOE),y)
DTC_INCLUDE += \
	$(srctree)/../vendor/xiaomi/sm8850-modules/qcom/opensource/audio-kernel/include \
	$(srctree)/../vendor/xiaomi/sm8850-modules/qcom/opensource/camera-kernel \
	$(srctree)/../vendor/xiaomi/sm8850-modules/qcom/opensource/synx-kernel
endif

ifneq "$(wildcard $(vendor)/qcom)" ""
	subdir-y += qcom
endif

# Silence all DTC warnings by default
DTC_FLAGS += -q
