CONFIG_SPL_BUILD=y
CONFIG_BOOTCOMMAND="for target in ${boot_targets}; do run bootcmd_${target}; done"
CONFIG_XPL_BUILD=y
