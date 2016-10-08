WEBMIN_FW_TCP_INCOMING = 22 80 443 12320 12321

include $(FAB_PATH)/common/mk/turnkey.mk

bootstrap/post += fab-chroot $O/bootstrap --script $(CONF_SCRIPTS)/apt;

root.build/post += touch $(STAMPS_DIR)/bootstrap; touch $(STAMPS_DIR)/root.spec
