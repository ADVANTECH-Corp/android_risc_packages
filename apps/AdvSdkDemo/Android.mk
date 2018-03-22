LOCAL_PATH := $(call my-dir)

################################################

include $(CLEAR_VARS)

# Module name should match apk name to be installed.
LOCAL_MODULE := AdvSdkDemo
LOCAL_SRC_FILES := AdvSdkDemo.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)

LOCAL_PACKAGE_NAME := AdvSdkDemo
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_PRIVILEGED_MODULE := true

include $(BUILD_PREBUILT)

