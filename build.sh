#!/bin/bash
#

#
#	do the base config
#
sudo lb clean

#
#	copy the DartScorer packages
#
cp -p ../DartScorer/dartscorer*.deb config/packages
cp -p ../DartScorer-Voices/dartscorer-voices*.deb config/packages

#
#	configure the live system
#
mkdir -p config/includes.chroot_after_packages/etc/live/
cat >config/includes.chroot_after_packages/etc/live/config.conf <<EOF
LIVE_USERNAME="dart"
LIVE_USER_DEFAULT_GROUPS="audio,cdrom,video,plugdev,netdev,powerdev,console,bluetooth"
LIVE_LOCALES="de_DE.UTF-8"
LIVE_TIMEZONE="Europe/Berlin"
LIVE_KEYBOARD_MODEL="pc105"
LIVE_KEYBOARD_LAYOUTS="de"
LIVE_KEYBOARD_VARIANTS="nodeadkeys"
EOF

#
#	create a user skeleton -- which will be also used for our default user
#
mkdir -p config/includes.chroot_after_packages/etc/skel/
cat >config/includes.chroot_after_packages/etc/skel/.xsession <<EOF
#!/bin/bash
while true; do
	DartScorer --fullscreen
	sleep 1
done
termit
EOF
chmod +x config/includes.chroot_after_packages/etc/skel/.xsession

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
