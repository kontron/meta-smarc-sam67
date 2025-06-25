meta-kontron-sa67

Description
-----------

This repository contains the yocto layer for the Kontron SMARC SA67 module.
It is based on TI's meta-tisdk and meta-arago layers as well as several others
like meta-arm, meta-openembedded, oe-core etc. provided by their respective
owners. A full list of yocto layers used is given below.

Prerequisites
-------------

During build of the targets for the SMARC SA67, the following layers are
downloaded and used for building.

* https://git.openembedded.org/bitbake
* arago,https://git.yoctoproject.org/meta-arago
* browser,https://github.com/OSSystems/meta-browser.git
* https://code.qt.io/yocto/meta-qt6.git
* https://git.yoctoproject.org/meta-virtualization
* https://git.openembedded.org/meta-openembedded
* https://git.yoctoproject.org/meta-ti
* https://git.yoctoproject.org/meta-arm
* https://github.com/kraj/meta-clang
* https://git.openembedded.org/openembedded-core
* https://git.ti.com/git/ti-sdk-linux/meta-tisdk.git
* https://gitlab.kontron.com/smarc/meta-kontron-sa67.git

The exact source revisions of the repository to be checked out for building
are given in a separate configuration file.

Building
--------

Installation
------------

The final image can be installed either on the modules emmc device or an
SD card for booting. Installation on SD card is described below.

TBD

