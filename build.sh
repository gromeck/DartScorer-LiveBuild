#!/bin/bash
#
#	do the live build
#
. ./common.sh

#
#	copy the DartScorer packages
#
cp -p ../DartScorer/dartscorer*.deb config/packages/
cp -p ../DartScorer-Voices/dartscorer-voices*.deb config/packages/

#
#	do the build
#
sudo lb build

#
#	rename & show the result
#
du -h $TITLE-*

#
#	EOF
#
