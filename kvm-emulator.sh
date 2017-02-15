#!/bin/sh
# set -x

# Start a AVD under kvm.

AVD_NAME=$1
shift # shift the arguments by 1

echo "AVD_NAME: $AVD_NAME"
echo "Arguments: $@"

/home/rcuyegkeng/Android/Sdk/tools/emulator "$@" -avd $AVD_NAME -qemu -m 2047 -enable-kvm
