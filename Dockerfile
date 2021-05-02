FROM debian:buster
RUN adduser --disabled-password --gecos "" gw302
RUN apt-get -qq update
RUN apt-get -qq install build-essential file wget cpio python python3 unzip rsync bc git
USER gw302
