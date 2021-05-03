# buildroot_ido-som2d01

Buildroot for ido-som2d01 based boards.

## Wha?

This is a buildroot setup for the various ido-som2d01 based boards.

## Flashing a blank module

- You need to flash at least the CIS blob, the IPL blob and the u-boot SPL.
  Right now you need to do this with the vendor ISP tool. Flashrom can drive
  the i2c interface to write SPI NOR but it cannot do SPI NAND yet so there
  is no alternative right now.

- The main u-boot binary here lives in a UBI partition so that bad block
  recovery etc actually works. You can't do the UBI setup with the ISP tool.
  This is fine. The u-boot SPL is capable of loading the main u-boot binary
  over serial. The first time you boot you need to send u-boot with ymodem.

- Now we need to format the part of the flash we'll use for the UBI
  partitions. `kernel-rescue.fit` is a micro system with a kernel and just
  enough userland to setup the flash.

- ** Instructions for rescue image here **
