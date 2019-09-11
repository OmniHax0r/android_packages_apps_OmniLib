LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_USE_AAPT2 := true

LOCAL_MODULE := OmniLib

LOCAL_SHARED_ANDROID_LIBRARIES := \
    androidx.core_core \
    androidx.preference_preference

LOCAL_STATIC_JAVA_LIBRARY := legacy-android-test

LOCAL_JAR_EXCLUDE_FILES := none

LOCAL_SRC_FILES := $(call all-java-files-under, src)

LOCAL_RESOURCE_DIR := \
        $(LOCAL_PATH)/res

include frameworks/base/packages/SettingsLib/common.mk

include $(BUILD_STATIC_JAVA_LIBRARY)
