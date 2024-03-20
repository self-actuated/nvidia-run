#!/bin/bash

# Additional helper script to be used via curl | sh if unable to use this action directly.

RET=$(lspci | grep "3D controller" || true)
if [ -n "$RET" ]
then
 curl -o ./NVIDIA-Linux-x86_64.run -s -S -L https://us.download.nvidia.com/tesla/550.54.15/NVIDIA-Linux-x86_64-550.54.15.run \
    && chmod +x ./NVIDIA-Linux-x86_64.run
else
 curl -o ./NVIDIA-Linux-x86_64.run -s -S -L -O https://us.download.nvidia.com/XFree86/Linux-x86_64/525.60.11/NVIDIA-Linux-x86_64-525.60.11.run \
   && chmod +x ./NVIDIA-Linux-x86_64.run
fi
chmod +x ./NVIDIA-Linux-x86_64.run

sudo -E ./NVIDIA-Linux-x86_64.run \
        --accept-license \
        --ui=none \
        --no-questions \
        --no-x-check \
        --no-check-for-alternate-installs \
        --no-nouveau-check
