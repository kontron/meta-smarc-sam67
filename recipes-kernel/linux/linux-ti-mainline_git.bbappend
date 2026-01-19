FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

DT_FILES += "k3-am67a-kontron-sa67-dp0.dtso \
             k3-am67a-kontron-sa67-gbe1.dtso \
             k3-am67a-kontron-sa67-rtc-rv8263.dtso \
             k3-am67a-kontron-sa67-gpios.dtso \
             k3-am67a-kontron-sa67-lvds0-evervision-vgg644804.dtso \
             k3-am67a-kontron-sa67-lvds-auo-p238han01.dtso \
	     k3-am67a-kontron-sa67-ads2.dtso \
             k3-am67a-kontron-sa67-ads2-rev-a-fixups.dtso"

# Override settings from TIs kernel recipe for our linux-kernel git repo
# with SA67 support
KERNEL_GIT_URI = "git://github.com/kontron/linux-smarc-sam67.git"
KERNEL_GIT_PROTOCOL = "https"
KERNEL_GIT_BRANCH = "branch=${BRANCH}"

BRANCH = "master"
SRCREV = "7044b8375ba3a366d4fcb856ccca670cfc1e52ee"
PV = "6.19.0+git"

KERNEL_REPRODUCIBILITY_PATCHES = " \
    file://0001-perf-python-Fix-compile-for-32bit-platforms.patch \
"
