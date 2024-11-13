#LDD

LDD_VERSION=75f1c0aa616b29c50050a07543960c6ee723b229
LDD_SITE='git@github.com:cu-ecen-aeld/assignment-7-tahasami86.git'
LDD_SITE_METHOD = git
LDD_SITE_GIT_SUBMODULES = YES

LDD_MODULE_SUBDIRS = scull/
LDD_MODULE_SUBDIRS += misc-modules/

LDD_MODULE_MAKE_OPTS = KERNELDIR=$(LINUX_DIR)

define LDD_INSTALL_TARGET_CMDS

	$(INSTALL) -m 0755 $(@D)/scull/scull_load	        $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/scull/scull_unload          $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_load    $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_unload  $(TARGET_DIR)/usr/bin

endef

$(eval $(kernel-module))
$(eval $(generic-package))
