##
# Copyright (C) 2017 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lluvia stuff.
$(call inherit-product, vendor/lluvia/config/common.mk)

# Inherit from tiffany device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := tiffany
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := lluvia_tiffany
PRODUCT_MODEL := MI 5X

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="tiffany-user 8.0.0 OPR1.170623.032 119 release-keys"
    
BUILD_FINGERPRINT := xiaomi/tiffany/tiffany:7.1.2/N2G47H/V9.2.2.0.NDBCNEK:user/release-keys
