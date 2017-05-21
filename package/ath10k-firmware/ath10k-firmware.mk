################################################################################
#
# ath10k-firmware
#
################################################################################

ATH10K_FIRMWARE_SITE_METHOD = git
ATH10K_FIRMWARE_VERSION = $(BR2_PACKAGE_ATH10K_FIRMWARE_GIT_REV)
ATH10K_FIRMWARE_SITE = $(BR2_PACKAGE_ATH10K_FIRMWARE_GIT_URL)

define ATH10K_FIRMWARE_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/lib/firmware/ath10k
	cp -r $(@D)/* $(TARGET_DIR)/lib/firmware/ath10k
endef

$(eval $(generic-package))
