PREFIX = idosom2d01
DEFCONFIG = ../br2idosom2d01/configs/idosom2d01_defconfig
EXTERNALS +=../br2autosshkey ../br2idosom2d01
TOOLCHAIN = arm-buildroot-linux-gnueabihf_sdk-buildroot.tar.gz

all: buildroot copy_outputs

bootstrap:
	git submodule init
	git submodule update

./br2secretsauce/common.mk: bootstrap

include ./br2secretsauce/common.mk

copy_outputs:
	cp buildroot/output/images/ipl $(OUTPUTS)/idosom2d01-ipl
	cp buildroot/output/images/u-boot.img $(OUTPUTS)/idosom2d01-u-boot.img
	cp buildroot/output/images/kernel.fit $(OUTPUTS)/idosom2d01-kernel.fit
	cp buildroot/output/images/rootfs.squashfs $(OUTPUTS)/idosom2d01-rootfs.squashfs
