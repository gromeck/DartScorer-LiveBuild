*** this is work in progress ***

# DartScorer-LiveBuild
Wanna run the DartScorer :dart: application https://github.com/gromeck/DartScorer/ from a bootable live CD or USB stick?
This is the way to go ...

# How to install?

Debian Live Build will need root rights, so ensure that your account is listed in ```/etc/suders```.

Clone this repository and first run the script ```./init.sh``` to prepare your environment.

If necessary Debian Live Build will be installed (and let sudo ask for your password).
It is assumed that the resulting live build will be based on the current OS version (tested with bookworm).

# How to build?

During the build, the :dart: DarScorer packages found in ```../DartScorer/*.deb``` and ```../DartScorer-Voices/*.deb```
will be included in the Live Build. If no packages can be found, a warning will show up, but the build will continue.

Run ```./build.sh``` (as sudo is used, it will ask for your password).

If everything goes well, you will get the following files:

```
20K   DartScorer-amd64.contents
2,1M  DartScorer-amd64.files
780M  DartScorer-amd64.hybrid.iso
12K   DartScorer-amd64.packages
```

Copy the ISO file onto an USB stick (```dd``` is your friend) or write it to a CDROM. 
