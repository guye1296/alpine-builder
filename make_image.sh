#!/bin/sh


# apply kernel config for 9p FS support
cd /aports
git apply /config-lts.x86.diff

# build
cd /aports/scripts
./mkimage.sh --tag edge-v86 --outdir /out --arch x86 --repository http://dl-cdn.alpinelinux.org/alpine/edge/main --profile v86
