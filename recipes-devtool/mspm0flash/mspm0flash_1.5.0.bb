SUMMARY = "TI MSPM0 microcontroller flash utility"
HOMEPAGE = "https://github.com/kontron/mspm0flash"
DESCRIPTION = "MSPM0 programs and verifies the device memory through the I2C or UART interface. It communicates with the controller through the BSL (Bootstrap Loader)."
LICENSE = "BSD-2-Clause"

S = "${WORKDIR}/git"

SRC_URI = " \
	git://github.com/kontron/mspm0flash.git;protocol=https;branch=main \
	file://sa67-mainline-ctrl \
"

SRCREV = "60593696a35bc310d43b5b293dd1b70dde51b455"
LIC_FILES_CHKSUM = "file://COPYING;md5=71898da0bcc7c1bf11d5df63ed79104b"

TARGET_CC_ARCH += "${LDFLAGS}"
PACKAGES += "${BPN}-conf"

do_compile() {
	oe_runmake
}

do_install() {
	oe_runmake install DESTDIR="${D}"
}

do_install:append:sa67-mainline() {
	install -m 0755 -d ${D}/${sysconfdir}/${BPN}
	install -m 0755 ${WORKDIR}/${MACHINE}-ctrl ${D}/${sysconfdir}/${BPN}/ctrl
}

FILES:${PN} = "/usr/bin/mspm0flash"

FILES:${PN}-conf:sa67-mainline = " \
	${sysconfdir}/${BPN} \
	${sysconfdir}/${BPN}/ctrl \
"
