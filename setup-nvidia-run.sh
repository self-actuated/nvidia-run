#!/bin/bash

# Additional helper script to be used via curl | sh if unable to use this action directly.

RET=$(lspci | grep "3D controller" || true)
if [ -n "$RET" ]
then
 curl -o ./NVIDIA-Linux-x86_64.run -s -S -L https://us.download.nvidia.com/tesla/580.65.06/NVIDIA-Linux-x86_64-580.65.06.run \
    && chmod +x ./NVIDIA-Linux-x86_64.run
else
 curl -o ./NVIDIA-Linux-x86_64.run -s -S -L -O https://us.download.nvidia.com/XFree86/Linux-x86_64/580.76.05/NVIDIA-Linux-x86_64-580.76.05.run \
   && chmod +x ./NVIDIA-Linux-x86_64.run
fi
chmod +x ./NVIDIA-Linux-x86_64.run

sudo -E ./NVIDIA-Linux-x86_64.run \
        --accept-license \
        --ui=none \
        --no-questions \
        --no-x-check \
        --no-check-for-alternate-installs \
        --no-nouveau-check \
        --no-install-compat32-libs \
        --kernel-module-type=proprietary

# If you run into issues about MMU - or unified memory, add:
#   --no-unified-memory

# AE: 2025-09-01
# The --kernel-module-type=proprietary option also suppresses the error, and gives proper working Kernel modules. 
