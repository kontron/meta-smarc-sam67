PR:append = "_smarc_sa67_0"

# We want to install the powervr rogue firmware image blobs from the
# linux-firmware repository into our rootfs to support the GPU appropriately.
#

IMAGE_INSTALL:append = " linux-firmware-powervr"

