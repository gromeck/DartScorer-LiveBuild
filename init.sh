#!/bin/bash
#
#	see also
#	https://wiki.debian.org/DebianLive
#	https://lecorbeausvault.wordpress.com/2021/01/10/quickly-build-a-custom-bootable-installable-debian-live-iso-with-live-build/
#
. ./common.sh

#
#	install live-build environment -- if not already installed
#
apt info live-build
[ $? != 0 ] && sudo apt install live-build

#
#	source the hosts os info
#
. /etc/os-release

#
#	do the base config
#
sudo lb clean

sudo lb config \
	--archive-areas "main contrib non-free non-free-firmware" \
	--bootappend-live "boot=live components persistence console=ttyS0 console=tty0" \
	--debian-installer-gui false \
	--debootstrap-options "--variant=minbase" \
	--distribution $VERSION_CODENAME \
	--binary-image iso-hybrid \
	--binary-filesystem fat32 \
	--clean \
	--memtest memtest86+ \
	--initsystem systemd \
	--color \
	--hdd-label $TITLE \
	--image-name $TITLE \
	--source false \
	--system live \
	--apt-recommends false \
	--zsync false

#
#	EOF
#
