#!/bin/bash
#
#	do the live build
#
. ./common.sh

#
#	copy the DartScorer packages if available
#
DEBS=""
echo "Checking for DartScorer debian packages ..."
for DEB in ./DartScorer/dartscorer*.deb ../DartScorer-Voices/dartscorer-voices*.deb; do
	[ -f "$DEB" ] && DEBS="$DEBS $DEB"
done
if [ "$DEB" = "" ]; then
	echo "WARNING: Found no $TITLE debian packages to include in live build"
else
	echo "$TITLE debian packages to include:$DEBS"
	cp -p $DEBS config/packages/
fi

#
#	do the build
#
echo "Starting $TITLE live build ..."
sudo lb build
[ $? != 0 ] && echo "WARNING: $TITLE live build failed"

#
#	show the result
#
du -h $TITLE-*

#
#	EOF
#
