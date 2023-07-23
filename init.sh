#!/bin/bash
#
#	see also
#	https://wiki.debian.org/DebianLive
#	https://lecorbeausvault.wordpress.com/2021/01/10/quickly-build-a-custom-bootable-installable-debian-live-iso-with-live-build/
#

#
#	install live-build environment
#
sudo apt install live-build

#
#	do the base config
#
lb config \
	--distribution bullseye \
	--archive-areas "main contrib non-free-firmware" \
	--debootstrap-options "--variant=minbase" \
	--bootappend-live "boot=live components persistence"

#
#	EOF
#
