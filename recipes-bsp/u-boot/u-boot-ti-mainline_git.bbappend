FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
inherit uboot-extlinux-config

# Add the u-boot repository supporting Kontron SMARC sa67a
SRC_URI = "git://github.com/kontron/u-boot-smarc-sam67.git;protocol=https;branch=master \
           file://extlinux.conf \
"

SRCREV = "6c5788ff890816b835f4cac700cdcfac215c4d2c"

TI_DM = ""

# We don't want to create the extlinux.conf file from the uboot-extlinux-config
# bbclass, but use our own preconfigured extlinux.conf file instead. So copy our
# file into the build dir and return immediately from do_create_extlinux_config.
do_compile:append() {
    install -m 0644 ${WORKDIR}/extlinux.conf ${B}/extlinux.conf
}

do_create_extlinux_config:prepend() {
    if d.getVar("UBOOT_EXTLINUX") == "1":
      return
}
