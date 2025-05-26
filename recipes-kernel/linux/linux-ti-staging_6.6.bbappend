FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI += "file://0001-arm64-ti-add-sa67-device-tree-files.patch"

KERNEL_DEVICETREE_PREFIX += "ti/k3-am67a"

KERNEL_DEVICETREE += "k3-am67a-kontron-sa67.dtb"
