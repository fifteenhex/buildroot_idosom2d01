FROM debian:bullseye
RUN adduser --disabled-password --gecos "" notroot
RUN apt-get -qq update && apt-get -qq install build-essential \
				file \
				wget \
				cpio \
				python \
				python3 \
				unzip \
				rsync \
				bc \
				git \
				tftp-hpa
USER notroot
