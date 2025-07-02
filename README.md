meta-smarc-sam67

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

The meta-smarc-sam67 yocto layer cannot be built alone. Instead it is meant to
be stored along with other layers in an openembedded layer framework before
the Yocto BSP for the machines defined in this layer can be built. There is
another repository available that manages download, configuration and build
steps to create the full BSP with the desired artefacts, which can be cloned
from https://github.com/kontron/yocto-smarc-sam67.git.

The meta-smarc-sam67 layer adds 2 more machine configurations supporting the
Kontron SMARC-sAM67 module.

- sa67-ti: supports sa67 using TI's linux-ti-staging kernel and u-boot. The
  linux-ti-staging kernel includes the latest hardware device support that
  hasn't been merged upstream yet.
- sa67-mainline: supports sa67 using TI's linux-ti-mainline kernel and u-boot
  recipes. The linux-ti-mainline kernel recipe has been extended to use the
  Kontron linux-smarc-sam67 repository which is a fork from upstream linux
  with patches to support the sa67 that have not been merged upstream yet.
  Compared with TI's linux-ti-staging kernel, the Kontron fork supports more
  hardware specifics of the sa67 module.

Installation
------------

The final image can be installed either on the modules emmc device or an
SD card for booting. Installation on SD card is described below.

TBD

