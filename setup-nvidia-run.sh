#!/bin/bash

# Additional helper script to be used via curl | sh if unable to use this action directly.

curl -s -S -L -O https://us.download.nvidia.com/XFree86/Linux-x86_64/525.60.11/NVIDIA-Linux-x86_64-525.60.11.run \
              && chmod +x ./NVIDIA-Linux-x86_64-525.60.11.run
sudo -E ./NVIDIA-Linux-x86_64-525.60.11.run \
                  --accept-license \
                  --ui=none \
                  --no-questions \
                  --no-x-check \
                  --no-check-for-alternate-installs \
                  --no-nouveau-check
