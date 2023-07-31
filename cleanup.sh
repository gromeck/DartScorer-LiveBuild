#!/bin/bash
#
#	remove everything we don't need
#
. ./common.sh

sudo rm -rf \
	*.deb \
	.build \
	cache \
	binary* \
	chroot* \
	live-image-*
