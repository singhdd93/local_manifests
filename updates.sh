#!/bin/bash

if [ "${android}" = "" ]; then
	android=~/android/system
fi

cd ${android}/system/core
# init: Fix serial number on semc bootloaders
git fetch http://review.cyanogenmod.org/CyanogenMod/android_system_core refs/changes/74/38174/1 && git cherry-pick FETCH_HEAD

cd ${android}/bootable/recovery
# "not enough rainbows, 1 star uninstall"
git fetch http://review.cyanogenmod.org/CyanogenMod/android_bootable_recovery refs/changes/77/36777/3 && git cherry-pick FETCH_HEAD

cd ${android}/hardware/qcom/audio-caf
# msm7x30: disable logcat spam
git fetch http://review.cyanogenmod.org/CyanogenMod/android_hardware_qcom_audio-caf refs/changes/02/48202/1 && git cherry-pick FETCH_HEAD

cd ${android}/frameworks/av
# libstagefright: support for disabling buffer metadata
git fetch http://review.cyanogenmod.org/CyanogenMod/android_frameworks_av refs/changes/95/46495/1 && git cherry-pick FETCH_HEAD
# camera: Fix preview on SEMC msm7x30 devices
git fetch http://review.cyanogenmod.org/CyanogenMod/android_frameworks_av refs/changes/73/48673/1 && git cherry-pick FETCH_HEAD


