#! /bin/bash

SCRIPT_PATH=`readlink -f $0`
SCRIPT_DIR=`dirname $SCRIPT_PATH`
BR_TOP_DIR=`readlink -f $SCRIPT_DIR/../..`
ZIMAGE=$BR_TOP_DIR/output/images/bzImage
INITRD=$BR_TOP_DIR/output/images/rootfs.cpio
QEMU=qemu-system-x86_64

$QEMU --enable-kvm \
-kernel $ZIMAGE \
-initrd $INITRD \
-usb \
-device usb-ehci,id=ehci \
-device usb-host,vendorid=0x13b1,productid=0x0042 \
-append "console=ttyS0" \
-nographic \
-m 1024
