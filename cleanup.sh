#!/bin/bash
#
#	remove everything we don't need
#
. ./common.sh

sudo rm -rf \
	config/binary \
	config/bootstrap \
	config/chroot \
	config/common \
	config/hooks \
	config/packages/*.deb \
	config/source \
	.build \
	cache \
	binary* \
	chroot* \
	live-image-* \
	${TITLE}-amd64.*
