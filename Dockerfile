FROM i386/alpine

RUN apk update

# See https://wiki.alpinelinux.org/wiki/How_to_make_a_custom_ISO_image_with_mkimage
RUN apk add git alpine-sdk build-base apk-tools alpine-conf busybox fakeroot syslinux xorriso squashfs-tools mtools dosfstools grub-efi

RUN abuild-keygen -i -a
RUN git clone git://git.alpinelinux.org/aports
RUN apk update

COPY config-lts.x86.diff /
COPY make_image.sh /

COPY mkimg.v86.sh /aports/scripts

ENTRYPOINT ["/bin/sh", "/make_image.sh"]
