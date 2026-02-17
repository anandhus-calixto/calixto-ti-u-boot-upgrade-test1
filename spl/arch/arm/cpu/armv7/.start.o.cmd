cmd_spl/arch/arm/cpu/armv7/start.o := arm-linux-gnueabihf-gcc -Wp,-MD,spl/arch/arm/cpu/armv7/.start.o.d -nostdinc -isystem /usr/lib/gcc-cross/arm-linux-gnueabihf/11/include -Ispl/include -Iinclude      -I./arch/arm/include -include ./include/linux/kconfig.h -I./dts/upstream/include  -D__KERNEL__ -D__UBOOT__ -DCONFIG_XPL_BUILD -DCONFIG_SPL_BUILD -D__ASSEMBLY__ -fno-PIE -gdwarf-4 -D__ARM__ -Wa,-mimplicit-it=always -mthumb -mthumb-interwork -mabi=aapcs-linux -mno-unaligned-access -ffunction-sections -fdata-sections -fno-common -ffixed-r9 -msoft-float -mgeneral-regs-only -pipe -D__LINUX_ARM_ARCH__=7 -mtune=generic-armv7-a -I./arch/arm/mach-omap2/include   -c -o spl/arch/arm/cpu/armv7/start.o arch/arm/cpu/armv7/start.S

source_spl/arch/arm/cpu/armv7/start.o := arch/arm/cpu/armv7/start.S

deps_spl/arch/arm/cpu/armv7/start.o := \
    $(wildcard include/config/armv7/lpae.h) \
    $(wildcard include/config/position/independent.h) \
    $(wildcard include/config/spl/sys/no/vector/table.h) \
    $(wildcard include/config/has/vbar.h) \
    $(wildcard include/config/spl/skip/lowlevel/init.h) \
    $(wildcard include/config/cpu/v7a.h) \
    $(wildcard include/config/spl/skip/lowlevel/init/only.h) \
    $(wildcard include/config/spl/sys/icache/off.h) \
    $(wildcard include/config/bloblist.h) \
    $(wildcard include/config/sys/icache/off.h) \
    $(wildcard include/config/spl/armv7/set/cortex/smpen.h) \
    $(wildcard include/config/arm/errata/716044.h) \
    $(wildcard include/config/arm/errata/742230.h) \
    $(wildcard include/config/arm/errata/794072.h) \
    $(wildcard include/config/arm/errata/743622.h) \
    $(wildcard include/config/arm/errata/751472.h) \
    $(wildcard include/config/arm/errata/761320.h) \
    $(wildcard include/config/arm/errata/845369.h) \
    $(wildcard include/config/xpl/build.h) \
    $(wildcard include/config/spl/stack.h) \
    $(wildcard include/config/arm/errata/798870.h) \
    $(wildcard include/config/arm/errata/801819.h) \
    $(wildcard include/config/arm/cortex/a15/cve/2017/5715.h) \
    $(wildcard include/config/arm/errata/454179.h) \
    $(wildcard include/config/arm/errata/430973.h) \
    $(wildcard include/config/arm/cortex/a8/cve/2017/5715.h) \
    $(wildcard include/config/arm/errata/621766.h) \
    $(wildcard include/config/arm/errata/725233.h) \
    $(wildcard include/config/arm/errata/852421.h) \
    $(wildcard include/config/arm/errata/852423.h) \
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
  include/asm-offsets.h \
  spl/include/generated/generic-asm-offsets.h \
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
    $(wildcard include/config/text/base.h) \
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
  arch/arm/include/asm/config.h \
    $(wildcard include/config/arch/ls1021a.h) \
    $(wildcard include/config/fsl/layerscape.h) \
  include/linux/kconfig.h \
  include/config_fallbacks.h \
    $(wildcard include/config/spl/pad/to.h) \
    $(wildcard include/config/spl/max/size.h) \
  arch/arm/include/asm/system.h \
    $(wildcard include/config/armv8/psci.h) \
    $(wildcard include/config/armv7/psci.h) \
    $(wildcard include/config/sys/arm/cache/writethrough.h) \
    $(wildcard include/config/sys/arm/cache/writealloc.h) \
    $(wildcard include/config/sys/arm/cache/writeback.h) \
  include/linux/compiler.h \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/stack/validation.h) \
    $(wildcard include/config/kasan.h) \
  include/linux/compiler_types.h \
    $(wildcard include/config/have/arch/compiler/h.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/spl/optimize/inlining.h) \
    $(wildcard include/config/cc/has/asm/inline.h) \
  arch/arm/include/asm/barriers.h \
  include/linux/linkage.h \
  arch/arm/include/asm/linkage.h \
  arch/arm/include/asm/armv7.h \
    $(wildcard include/config/armv7/nonsec.h) \
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

spl/arch/arm/cpu/armv7/start.o: $(deps_spl/arch/arm/cpu/armv7/start.o)

$(deps_spl/arch/arm/cpu/armv7/start.o):
