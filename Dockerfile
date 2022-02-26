FROM debian:bullseye
RUN apt-get -qq update && apt-get -qq install \
	build-essential \
	file \
	wget \
	cpio \
	python3 \
	python3-ply \
	python3-pip \
	unzip \
	rsync \
	flex \
	bison \
	bc \
	git \
	pkg-config \
	libssl-dev \
	libyaml-dev \
	gcc-arm-linux-gnueabihf \
	u-boot-tools
