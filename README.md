# DartScorer-LiveBuild
Wanna run the DartScorer :dart: application https://github.com/gromeck/DartScorer/ from a bootable live CD or USB stick?
This is the way to go ...

# How to install?

Debian Live Build will need root rights, so ensure that your account is listed in ```/etc/suders```.
Clone this repository and first run the script ```./init.sh``` to prepare your environment.
If necessary Debian Live Build will be installed (and let sudo ask for your password).
It is assumed that the resulting live build will be based on the current OS version (tested with bullseye and bookworm).

# How to build?

Run ```./build.sh``` (as sudo is used, it will ask for your password).
If everything goes well, you will get the following files:

