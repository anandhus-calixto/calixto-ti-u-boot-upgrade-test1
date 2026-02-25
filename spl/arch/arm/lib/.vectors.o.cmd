cmd_spl/arch/arm/lib/vectors.o := /media/drive_b/anandhu/ti/linux-devkit/sysroots/x86_64-arago-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc -Wp,-MD,spl/arch/arm/lib/.vectors.o.d -nostdinc -isystem /media/drive_b/anandhu/ti/linux-devkit/sysroots/x86_64-arago-linux/usr/lib/arm-oe-linux-gnueabi/gcc/arm-oe-linux-gnueabi/13.4.0/include -Ispl/include -Iinclude      -I./arch/arm/include -include ./include/linux/kconfig.h -I./dts/upstream/include  -D__KERNEL__ -D__UBOOT__ -DCONFIG_XPL_BUILD -DCONFIG_SPL_BUILD -D__ASSEMBLY__ -fno-PIE -gdwarf-4 -DCONFIG_THUMB2_KERNEL -D__ARM__ -Wa,-mimplicit-it=always -mthumb -mthumb-interwork -mabi=aapcs-linux -mno-unaligned-access -ffunction-sections -fdata-sections -fno-common -ffixed-r9 -msoft-float -mgeneral-regs-only -pipe -march=armv7-a -D__LINUX_ARM_ARCH__=7 -mtune=generic-armv7-a -I./arch/arm/mach-omap2/include   -c -o spl/arch/arm/lib/vectors.o arch/arm/lib/vectors.S

source_spl/arch/arm/lib/vectors.o := arch/arm/lib/vectors.S

deps_spl/arch/arm/lib/vectors.o := \
    $(wildcard include/config/arch/k3.h) \
    $(wildcard include/config/spl/sys/no/vector/table.h) \
    $(wildcard include/config/enable/arm/soc/boot0/hook.h) \
    $(wildcard include/config/xpl/build.h) \
    $(wildcard include/config/spl/use/separate/fault/handlers.h) \
    $(wildcard include/config/spl/semihosting/fallback.h) \
  include/linux/kconfig.h \
    $(wildcard include/config/booger.h) \
    $(wildcard include/config/foo.h) \
    $(wildcard include/config/spl/.h) \
    $(wildcard include/config/tpl/.h) \
    $(wildcard include/config/tools/.h) \
    $(wildcard include/config/tpl/build.h) \
    $(wildcard include/config/vpl/build.h) \
    $(wildcard include/config/spl/build.h) \
    $(wildcard include/config/spl/foo.h) \
    $(wildcard include/config/tools/foo.h) \
    $(wildcard include/config/tpl/foo.h) \
    $(wildcard include/config/vpl/foo.h) \
    $(wildcard include/config/spl/option.h) \
    $(wildcard include/config/spl/acme.h) \
    $(wildcard include/config/acme.h) \
    $(wildcard include/config/tpl/acme.h) \
    $(wildcard include/config/if/enabled/int.h) \
    $(wildcard include/config/spl/int/option.h) \
  include/config.h \
  include/configs/am335x_versa_nxt512.h \
    $(wildcard include/config/bootcommand.h) \
    $(wildcard include/config/mtd/raw/nand.h) \
    $(wildcard include/config/nor.h) \
  include/configs/ti_am335x_common.h \
  arch/arm/include/asm/arch/omap.h \
    $(wildcard include/config/am33xx.h) \
    $(wildcard include/config/am43xx.h) \
  include/linux/sizes.h \
  include/linux/const.h \
  include/configs/ti_armv7_omap.h \
  include/configs/ti_armv7_common.h \
    $(wildcard include/config/nr/dram/banks.h) \
    $(wildcard include/config/nor/boot.h) \
    $(wildcard include/config/qspi/boot.h) \
    $(wildcard include/config/spl/text/base.h) \
    $(wildcard include/config/spl/os/boot.h) \
    $(wildcard include/config/text/base.h) \
    $(wildcard include/config/cmd/net.h) \
    $(wildcard include/config/arm64.h) \
    $(wildcard include/config/distro/defaults.h) \
    $(wildcard include/config/cmd/pxe.h) \
    $(wildcard include/config/cmd/dhcp.h) \
    $(wildcard include/config/cmd/mmc.h) \
    $(wildcard include/config/cmd/usb.h) \
  arch/arm/include/asm/config.h \
    $(wildcard include/config/arch/ls1021a.h) \
    $(wildcard include/config/fsl/layerscape.h) \
  include/linux/kconfig.h \
  include/config_fallbacks.h \
    $(wildcard include/config/spl/pad/to.h) \
    $(wildcard include/config/spl/max/size.h) \

spl/arch/arm/lib/vectors.o: $(deps_spl/arch/arm/lib/vectors.o)

$(deps_spl/arch/arm/lib/vectors.o):
