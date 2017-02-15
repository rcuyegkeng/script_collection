#!/bin/bash

#set -x

# Check if the amdgpu is loaded:
lsmod | grep -i amdgpu

# To load the amdgpu manually:
#  sudo modprobe amdgpu

# However, the amdgpu open driver requires Linux kernel 4.7 to work with the
# RX 470.

