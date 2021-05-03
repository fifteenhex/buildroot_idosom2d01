PREFIX = idosom2d01
DEFCONFIG = ../br2idosom2d01/configs/idosom2d01_defconfig
DEFCONFIG_RESCUE = ../br2idosom2d01/configs/idosom2d01_rescue_defconfig
EXTERNALS +=../br2autosshkey ../br2idosom2d01
TOOLCHAIN = arm-buildroot-linux-gnueabihf_sdk-buildroot.tar.gz

all: buildroot buildroot-rescue copy_outputs

bootstrap.stamp:
	git submodule init
	git submodule update
	touch bootstrap.stamp

./br2secretsauce/common.mk: bootstrap.stamp
./br2secretsauce/rescue.mk: bootstrap.stamp

bootstrap: bootstrap.stamp

include ./br2secretsauce/common.mk
include ./br2secretsauce/rescue.mk

copy_outputs:
	cp buildroot/output/images/ipl $(OUTPUTS)/idosom2d01-ipl
	cp buildroot/output/images/u-boot.img $(OUTPUTS)/idosom2d01-u-boot.img
	cp buildroot/output/images/kernel.fit $(OUTPUTS)/idosom2d01-kernel.fit
	cp buildroot/output/images/rootfs.squashfs $(OUTPUTS)/idosom2d01-rootfs.squashfs
	cp buildroot_rescue/output/images/kernel-rescue.fit $(OUTPUTS)/idosom2d01-kernel-rescue.fit
