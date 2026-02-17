cmd_arch/arm/lib/crt0.o := arm-linux-gnueabihf-gcc -Wp,-MD,arch/arm/lib/.crt0.o.d -nostdinc -isystem /usr/lib/gcc-cross/arm-linux-gnueabihf/11/include -Iinclude      -I./arch/arm/include -include ./include/linux/kconfig.h -I./dts/upstream/include  -D__KERNEL__ -D__UBOOT__ -D__ASSEMBLY__ -fno-PIE -gdwarf-4 -DCONFIG_THUMB2_KERNEL -D__ARM__ -Wa,-mimplicit-it=always -mthumb -mthumb-interwork -mabi=aapcs-linux -mword-relocations -fno-pic -mno-unaligned-access -ffunction-sections -fdata-sections -fno-common -ffixed-r9 -msoft-float -mgeneral-regs-only -pipe -D__LINUX_ARM_ARCH__=7 -mtune=generic-armv7-a -I./arch/arm/mach-omap2/include   -c -o arch/arm/lib/crt0.o arch/arm/lib/crt0.S

source_arch/arm/lib/crt0.o := arch/arm/lib/crt0.S

deps_arch/arm/lib/crt0.o := \
    $(wildcard include/config/spl/stack/r.h) \
    $(wildcard include/config/use/arch/memset.h) \
    $(wildcard include/config/arch/very/early/init.h) \
    $(wildcard include/config/tpl/build.h) \
    $(wildcard include/config/tpl/needs/separate/stack.h) \
    $(wildcard include/config/tpl/stack.h) \
    $(wildcard include/config/xpl/build.h) \
    $(wildcard include/config/spl/stack.h) \
    $(wildcard include/config/debug/uart.h) \
    $(wildcard include/config/serial.h) \
    $(wildcard include/config/spl/early/bss.h) \
    $(wildcard include/config/position/independent.h) \
    $(wildcard include/config/text/base.h) \
    $(wildcard include/config/sys/reloc/gd/env/addr.h) \
    $(wildcard include/config/cpu/v7m.h) \
    $(wildcard include/config/framework.h) \
    $(wildcard include/config/sys/thumb/build.h) \
  include/linux/kconfig.h \
    $(wildcard include/config/booger.h) \
    $(wildcard include/config/foo.h) \
    $(wildcard include/config/spl/.h) \
    $(wildcard include/config/tpl/.h) \
    $(wildcard include/config/tools/.h) \
    $(wildcard include/config/vpl/build.h) \
    $(wildcard include/config/spl/build.h) \
    $(wildcard include/config/tools/foo.h) \
    $(wildcard include/config/spl/foo.h) \
    $(wildcard include/config/tpl/foo.h) \
    $(wildcard include/config/vpl/foo.h) \
    $(wildcard include/config/option.h) \
    $(wildcard include/config/acme.h) \
    $(wildcard include/config/spl/acme.h) \
    $(wildcard include/config/tpl/acme.h) \
    $(wildcard include/config/if/enabled/int.h) \
    $(wildcard include/config/int/option.h) \
  include/config.h \
  include/configs/am335x_versa_nxt512.h \
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
    $(wildcard include/config/cmd/net.h) \
    $(wildcard include/config/arm64.h) \
    $(wildcard include/config/distro/defaults.h) \
    $(wildcard include/config/cmd/pxe.h) \
    $(wildcard include/config/cmd/dhcp.h) \
    $(wildcard include/config/cmd/mmc.h) \
    $(wildcard include/config/cmd/usb.h) \
  include/config_distro_bootcmd.h \
    $(wildcard include/config/sandbox.h) \
    $(wildcard include/config/cmd/ubifs.h) \
    $(wildcard include/config/efi/loader.h) \
    $(wildcard include/config/arm.h) \
    $(wildcard include/config/x86/run/32bit.h) \
    $(wildcard include/config/x86/run/64bit.h) \
    $(wildcard include/config/arch/rv32i.h) \
    $(wildcard include/config/arch/rv64i.h) \
    $(wildcard include/config/cmd/bootefi/bootmgr.h) \
    $(wildcard include/config/sata.h) \
    $(wildcard include/config/nvme.h) \
    $(wildcard include/config/scsi.h) \
    $(wildcard include/config/ide.h) \
    $(wildcard include/config/pci.h) \
    $(wildcard include/config/cmd/virtio.h) \
    $(wildcard include/config/x86.h) \
    $(wildcard include/config/cmd/extension.h) \
  include/env/ti/dfu.h \
  arch/arm/include/asm/config.h \
    $(wildcard include/config/arch/ls1021a.h) \
    $(wildcard include/config/fsl/layerscape.h) \
  include/linux/kconfig.h \
  include/config_fallbacks.h \
    $(wildcard include/config/spl/pad/to.h) \
    $(wildcard include/config/spl/max/size.h) \
  include/asm-offsets.h \
  include/generated/generic-asm-offsets.h \
  include/linux/linkage.h \
  arch/arm/include/asm/linkage.h \
  arch/arm/include/asm/assembler.h \
  arch/arm/include/asm/unified.h \
    $(wildcard include/config/arm/asm/unified.h) \
    $(wildcard include/config/thumb2/kernel.h) \
  include/system-constants.h \
    $(wildcard include/config/has/custom/sys/init/sp/addr.h) \
    $(wildcard include/config/custom/sys/init/sp/addr.h) \
    $(wildcard include/config/mips.h) \
    $(wildcard include/config/spl/has/custom/malloc/start.h) \
    $(wildcard include/config/spl/custom/sys/malloc/addr.h) \
    $(wildcard include/config/spl/bss/start/addr.h) \
    $(wildcard include/config/spl/bss/max/size.h) \
    $(wildcard include/config/spl/sys/malloc.h) \
    $(wildcard include/config/spl/sys/malloc/size.h) \
    $(wildcard include/config/spl/payload/args/addr.h) \
    $(wildcard include/config/sys/nand/block/size.h) \
    $(wildcard include/config/sys/nand/page/size.h) \

arch/arm/lib/crt0.o: $(deps_arch/arm/lib/crt0.o)

$(deps_arch/arm/lib/crt0.o):
