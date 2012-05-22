# Copyright (C) 2011 The Android Open Source Project
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
# This file is the build configuration for a full Android
# build for maguro hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps). Except for a few implementation
# details, it only fundamentally contains two inherit-product
# lines, full and maguro, hence its name.
#

# Get the long list of APNs
PRODUCT_COPY_FILES := device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

# Include all locales
$(call inherit-product, $(SRC_TARGET_DIR)/product/locales_full.mk)

# U8800 uses high-density artwork where available
PRODUCT_LOCALES += hdpi

# Camera
PRODUCT_PACKAGES := \
	Camera

# Audio
PRODUCT_PACKAGES += \
	audio.a2dp.default \
	audio_policy.msm7x30 \
	audio.primary.msm7x30 \
	libaudioutils

# Camera
PRODUCT_PACKAGES += \
	camera.msm7x30

# Video
PRODUCT_PACKAGES += \
	copybit.msm7x30 \
	gralloc.msm7x30 \
	hwcomposer.msm7x30 \
	libgenlock \
	libmemalloc \
	liboverlay \
	libQcomUI \
	libtilerenderer

# Media
PRODUCT_PACKAGES += \
	libOmxCore \
	libOmxVenc \
	libOmxVdec \
	libstagefrighthw

# Lights
PRODUCT_PACKAGES += \
	lights.msm7x30 \
	sensors.msm7x30

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
# This is where we'd set a backup provider if we had one
#$(call inherit-product, device/sample/products/backup_overlay.mk)
# Inherit from u8800 device
$(call inherit-product, device/huawei/u8800/device.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := full_u8800
PRODUCT_DEVICE := u8800
PRODUCT_BRAND := Android
PRODUCT_MODEL := Full Android on U8800
