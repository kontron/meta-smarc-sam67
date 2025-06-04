FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI += "file://0001-arm64-ti-add-sa67-device-tree-files.patch \
            file://k3-am67a-kontron-sa67-ads2.dtso \
            file://k3-am67a-kontron-sa67-ads2-rev-a-fixups.dtso \
            file://k3-am67a-kontron-sa67-lvds0-evervision-vgg644804.dtso \
            file://k3-am67a-kontron-sa67-lvds-auo-p238han01.dtso"

DT_FILES += "k3-am67a-kontron-sa67-ads2.dtso \
            k3-am67a-kontron-sa67-ads2-rev-a-fixups.dtso \
            k3-am67a-kontron-sa67-lvds0-evervision-vgg644804.dtso \
            k3-am67a-kontron-sa67-lvds-auo-p238han01.dtso"

# Override settings from TIs kernel recipe for our ti-linux-kernel git repo
# with SA67 support
KERNEL_GIT_URI = "git://github.com/kontron/ti-linux-kernel.git"
KERNEL_GIT_PROTOCOL = "https"
KERNEL_GIT_BRANCH = "branch=${BRANCH}"

BRANCH = "kontron/ti-linux-6.12.y-cicd-11.00.11"
SRCREV = "47998d7b6023eac03ecdd0d414477260b5e55542"
PV = "6.12.22+git"

KERNEL_DEVICETREE += "ti/k3-am67a-kontron-sa67.dtb \
                      ti/k3-am67a-kontron-sa67-ads2.dtbo \
                      ti/k3-am67a-kontron-sa67-ads2-rev-a-fixups.dtbo \
                      ti/k3-am67a-kontron-sa67-lvds0-evervision-vgg644804.dtbo \
                      ti/k3-am67a-kontron-sa67-lvds-auo-p238han01.dtbo"

# Install our device tree sources that are not available upstream yet
do_compile:prepend() {
    install -m 0644 ${WORKDIR}/*.dts* ${S}/arch/arm64/boot/dts/ti/
}
