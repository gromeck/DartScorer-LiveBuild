#!/bin/bash
#

#
#	cleanup
#
sudo lb clean
. ./common.sh

#
#	copy the DartScorer packages
#
cp -p ../DartScorer/dartscorer*.deb config/packages
cp -p ../DartScorer-Voices/dartscorer-voices*.deb config/packages

#
#	do the build
#
sudo time -p lb build

#
#	rename & show the result
#
du -h live-build*

#
#	EOF
#
